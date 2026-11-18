import { NextResponse } from "next/server";
import { db } from "../../../../../lib/db";

function tokenFrom(request: Request) {
  return request.headers.get("cookie")?.match(/(?:^|;\s*)satu_session=([^;]+)/)?.[1];
}

async function currentUser(request: Request) {
  const token = tokenFrom(request);
  if (!token) return null;
  const [rows] = await db.execute(
    "SELECT users.id, users.username FROM sessions INNER JOIN users ON users.id = sessions.user_id WHERE sessions.token = ? AND sessions.expires_at > NOW() LIMIT 1",
    [token],
  );
  return (rows as { id: number; username: string }[])[0] || null;
}

export async function GET(request: Request, context: { params: Promise<{ id: string }> }) {
  const user = await currentUser(request);
  if (!user) return NextResponse.json({ message: "Silakan login terlebih dahulu." }, { status: 401 });
  const { id } = await context.params;
  const [rows] = await db.execute(
    "SELECT users.username AS author, work_comments.comment_text AS text, DATE_FORMAT(work_comments.created_at, '%d %b %Y %H:%i') AS time FROM work_comments INNER JOIN users ON users.id = work_comments.user_id WHERE work_comments.work_id = ? ORDER BY work_comments.created_at DESC",
    [id],
  );
  return NextResponse.json(rows);
}

export async function POST(request: Request, context: { params: Promise<{ id: string }> }) {
  const user = await currentUser(request);
  if (!user) return NextResponse.json({ message: "Silakan login terlebih dahulu." }, { status: 401 });
  const { id } = await context.params;
  const { text } = await request.json();
  const comment = String(text || "").trim();
  if (!comment || comment.length > 1000) {
    return NextResponse.json({ message: "Komentar wajib diisi dan maksimal 1000 karakter." }, { status: 400 });
  }
  await db.execute("INSERT INTO work_comments (work_id, user_id, comment_text) VALUES (?, ?, ?)", [id, user.id, comment]);
  return NextResponse.json({ author: user.username, text: comment, time: "Baru saja" }, { status: 201 });
}
