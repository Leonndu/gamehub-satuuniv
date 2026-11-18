import { NextResponse } from "next/server";
import { db } from "../../../../lib/db";

export async function GET(request: Request) {
  const token = request.headers.get("cookie")?.match(/(?:^|;\s*)satu_session=([^;]+)/)?.[1];
  if (!token) return NextResponse.json({ authenticated: false }, { status: 401 });

  const [rows] = await db.execute(
    `SELECT users.id, users.username
     FROM sessions INNER JOIN users ON users.id = sessions.user_id
     WHERE sessions.token = ? AND sessions.expires_at > NOW() LIMIT 1`,
    [token],
  );
  const user = (rows as { id: number; username: string }[])[0];
  if (!user) return NextResponse.json({ authenticated: false }, { status: 401 });
  return NextResponse.json({ authenticated: true, username: user.username });
}
