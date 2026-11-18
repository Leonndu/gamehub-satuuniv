import { randomUUID } from "node:crypto";
import { mkdir, unlink, writeFile } from "node:fs/promises";
import path from "node:path";
import { NextResponse } from "next/server";
import { db } from "../../../lib/db";

const allowedTypes = new Set(["image/jpeg", "image/png", "image/webp"]);

function getToken(request: Request) {
  return request.headers.get("cookie")?.match(/(?:^|;\s*)satu_session=([^;]+)/)?.[1];
}

export async function GET(request: Request) {
  const token = getToken(request);
  if (!token) return NextResponse.json({ message: "Silakan login terlebih dahulu." }, { status: 401 });

  try {
    const [sessionRows] = await db.execute(
      "SELECT user_id FROM sessions WHERE token = ? AND expires_at > NOW() LIMIT 1",
      [token],
    );
    const session = (sessionRows as { user_id: number }[])[0];
    if (!session) return NextResponse.json({ message: "Session tidak valid." }, { status: 401 });

    const [works] = await db.execute(
      "SELECT id, title, description, game_url, play_count, major, created_at FROM works ORDER BY created_at DESC",
    );
    const result = await Promise.all(
      (works as { id: number; title: string; description: string; game_url: string; play_count: number; major: string; created_at: string }[]).map(async (work) => {
        const [images] = await db.execute(
          "SELECT image_path, sort_order FROM work_images WHERE work_id = ? ORDER BY sort_order ASC",
          [work.id],
        );
        const [guides] = await db.execute(
          "SELECT instruction FROM work_guides WHERE work_id = ? ORDER BY step_number ASC",
          [work.id],
        );
        const [creators] = await db.execute(
          "SELECT creator_name FROM work_creators WHERE work_id = ? ORDER BY sort_order ASC",
          [work.id],
        );
        const [likeRows] = await db.execute(
          "SELECT COUNT(*) AS total, EXISTS(SELECT 1 FROM work_likes WHERE work_id = ? AND user_id = ?) AS liked FROM work_likes WHERE work_id = ?",
          [work.id, session.user_id, work.id],
        );
        const [commentRows] = await db.execute(
          "SELECT users.username AS author, work_comments.comment_text AS text, DATE_FORMAT(work_comments.created_at, '%d %b %Y %H:%i') AS time FROM work_comments INNER JOIN users ON users.id = work_comments.user_id WHERE work_comments.work_id = ? ORDER BY work_comments.created_at DESC",
          [work.id],
        );
        const like = (likeRows as { total: number; liked: number }[])[0];
        return {
          ...work,
          images: (images as { image_path: string; sort_order: number }[]).map((image) => image.image_path),
          guides: (guides as { instruction: string }[]).map((guide) => guide.instruction),
          creators: (creators as { creator_name: string }[]).map((creator) => creator.creator_name),
          likes: Number(like?.total || 0),
          liked: Boolean(like?.liked),
          comments: commentRows,
        };
      }),
    );
    return NextResponse.json(result);
  } catch (error) {
    console.error("Get works error:", error);
    return NextResponse.json({ message: "Karya gagal dimuat." }, { status: 500 });
  }
}

export async function POST(request: Request) {
  const token = getToken(request);
  if (!token) return NextResponse.json({ message: "Silakan login terlebih dahulu." }, { status: 401 });

  const connection = await db.getConnection();
  const savedFiles: string[] = [];

  try {
    const [sessionRows] = await connection.execute(
      `SELECT sessions.user_id, users.username
       FROM sessions INNER JOIN users ON users.id = sessions.user_id
       WHERE sessions.token = ? AND sessions.expires_at > NOW() LIMIT 1`,
      [token],
    );
    const session = (sessionRows as { user_id: number; username: string }[])[0];
    if (!session) return NextResponse.json({ message: "Session tidak valid." }, { status: 401 });
    if (session.username.toLowerCase() !== "leon") {
      return NextResponse.json({ message: "Hanya akun leon yang dapat menambah karya." }, { status: 403 });
    }

    const formData = await request.formData();
    const title = String(formData.get("title") || "").trim();
    const description = String(formData.get("description") || "").trim();
    const gameUrl = String(formData.get("game_url") || "").trim();
    const major = String(formData.get("major") || "").trim();
    const creators = formData.getAll("creator_name[]").map(String).map((name) => name.trim()).filter(Boolean);
    const guides = formData.getAll("guide[]").map(String).map((guide) => guide.trim()).filter(Boolean);
    const mainImage = formData.get("main_image");
    const additionalImages = formData.getAll("images[]");

    if (!title || !description || !gameUrl || !major || !creators.length || !guides.length || !(mainImage instanceof File) || !mainImage.size) {
      return NextResponse.json({ message: "Lengkapi judul, deskripsi, URL game, gambar, panduan, pembuat, dan jurusan." }, { status: 400 });
    }
    try {
      const parsedUrl = new URL(gameUrl);
      if (!["http:", "https:"].includes(parsedUrl.protocol)) throw new Error("invalid protocol");
    } catch {
      return NextResponse.json({ message: "URL game harus berupa alamat http atau https yang valid." }, { status: 400 });
    }
    if (!["Teknik Informatika", "Sistem Informasi", "Kolaborasi"].includes(major)) {
      return NextResponse.json({ message: "Pilihan jurusan tidak valid." }, { status: 400 });
    }

    const uploadDir = path.join(process.cwd(), "public", "uploads");
    await mkdir(uploadDir, { recursive: true });
    const images = [mainImage, ...additionalImages].filter((file): file is File => file instanceof File && file.size > 0);

    for (const image of images) {
      if (!allowedTypes.has(image.type) || image.size > 5 * 1024 * 1024) {
        return NextResponse.json({ message: "Format gambar harus JPG, PNG, atau WEBP dan maksimal 5 MB." }, { status: 400 });
      }
    }

    await connection.beginTransaction();
    const [workResult] = await connection.execute(
      "INSERT INTO works (created_by, title, description, game_url, major) VALUES (?, ?, ?, ?, ?)",
      [session.user_id, title, description, gameUrl, major],
    );
    const workId = (workResult as { insertId: number }).insertId;

    for (let index = 0; index < images.length; index += 1) {
      const image = images[index];
      const extension = image.type === "image/png" ? "png" : image.type === "image/webp" ? "webp" : "jpg";
      const filename = `${randomUUID()}.${extension}`;
      await writeFile(path.join(uploadDir, filename), Buffer.from(await image.arrayBuffer()));
      savedFiles.push(path.join(uploadDir, filename));
      await connection.execute(
        "INSERT INTO work_images (work_id, image_path, sort_order) VALUES (?, ?, ?)",
        [workId, `/uploads/${filename}`, index + 1],
      );
    }

    for (let index = 0; index < guides.length; index += 1) {
      await connection.execute(
        "INSERT INTO work_guides (work_id, step_number, instruction) VALUES (?, ?, ?)",
        [workId, index + 1, guides[index]],
      );
    }

    for (let index = 0; index < creators.length; index += 1) {
      await connection.execute(
        "INSERT INTO work_creators (work_id, creator_name, sort_order) VALUES (?, ?, ?)",
        [workId, creators[index], index + 1],
      );
    }

    await connection.commit();
    return NextResponse.json({ message: "Karya berhasil disimpan.", workId }, { status: 201 });
  } catch (error) {
    await connection.rollback();
    await Promise.all(savedFiles.map((file) => unlink(file).catch(() => undefined)));
    console.error("Create work error:", error);
    return NextResponse.json({ message: "Karya gagal disimpan. Periksa koneksi database." }, { status: 500 });
  } finally {
    connection.release();
  }
}
