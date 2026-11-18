import { NextResponse } from "next/server";
import { db } from "../../../../../lib/db";

function tokenFrom(request: Request) {
  return request.headers.get("cookie")?.match(/(?:^|;\s*)satu_session=([^;]+)/)?.[1];
}

export async function POST(request: Request, context: { params: Promise<{ id: string }> }) {
  const token = tokenFrom(request);
  const { id } = await context.params;
  if (!token) return NextResponse.json({ message: "Silakan login terlebih dahulu." }, { status: 401 });

  const [users] = await db.execute(
    "SELECT user_id FROM sessions WHERE token = ? AND expires_at > NOW() LIMIT 1",
    [token],
  );
  const user = (users as { user_id: number }[])[0];
  if (!user) return NextResponse.json({ message: "Session tidak valid." }, { status: 401 });

  const [existing] = await db.execute(
    "SELECT id FROM work_likes WHERE work_id = ? AND user_id = ? LIMIT 1",
    [id, user.user_id],
  );
  if ((existing as unknown[]).length) {
    await db.execute("DELETE FROM work_likes WHERE work_id = ? AND user_id = ?", [id, user.user_id]);
  } else {
    await db.execute("INSERT INTO work_likes (work_id, user_id) VALUES (?, ?)", [id, user.user_id]);
  }

  const [countRows] = await db.execute("SELECT COUNT(*) AS total FROM work_likes WHERE work_id = ?", [id]);
  return NextResponse.json({ liked: !(existing as unknown[]).length, likes: Number((countRows as { total: number }[])[0].total) });
}
