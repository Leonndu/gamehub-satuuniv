import { NextResponse } from "next/server";
import { db } from "../../../../../lib/db";

export async function POST(request: Request, context: { params: Promise<{ id: string }> }) {
  const token = request.headers.get("cookie")?.match(/(?:^|;\s*)satu_session=([^;]+)/)?.[1];
  if (!token) return NextResponse.json({ message: "Silakan login terlebih dahulu." }, { status: 401 });

  const [sessions] = await db.execute(
    "SELECT user_id FROM sessions WHERE token = ? AND expires_at > NOW() LIMIT 1",
    [token],
  );
  if (!(sessions as unknown[]).length) {
    return NextResponse.json({ message: "Session tidak valid." }, { status: 401 });
  }

  const { id } = await context.params;
  const [result] = await db.execute(
    "UPDATE works SET play_count = play_count + 1 WHERE id = ?",
    [id],
  );
  if ((result as { affectedRows: number }).affectedRows === 0) {
    return NextResponse.json({ message: "Karya tidak ditemukan." }, { status: 404 });
  }

  const [works] = await db.execute("SELECT play_count FROM works WHERE id = ?", [id]);
  return NextResponse.json({ plays: Number((works as { play_count: number }[])[0].play_count) });
}
