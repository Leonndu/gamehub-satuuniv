import { NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import crypto from "node:crypto";
import { db } from "../../../../lib/db";

export async function POST(request: Request) {
  try {
    const { username, password } = await request.json();
    const [rows] = await db.execute("SELECT id, username, password_hash FROM users WHERE username = ? LIMIT 1", [String(username || "").trim()]);
    const user = (rows as { id: number; username: string; password_hash: string }[])[0];

    if (!user || !(await bcrypt.compare(String(password || ""), user.password_hash))) {
      return NextResponse.json({ message: "Username atau password salah." }, { status: 401 });
    }

    const token = crypto.randomBytes(32).toString("hex");
    await db.execute("INSERT INTO sessions (user_id, token, expires_at) VALUES (?, ?, DATE_ADD(NOW(), INTERVAL 7 DAY))", [user.id, token]);
    const response = NextResponse.json({ message: "Login berhasil." });
    response.cookies.set("satu_session", token, {
      httpOnly: true,
      sameSite: "lax",
      secure: process.env.NODE_ENV === "production",
      maxAge: 60 * 60 * 24 * 7,
      path: "/",
    });
    return response;
  } catch (error) {
    console.error(error);
    return NextResponse.json({ message: "Database belum siap atau konfigurasi salah." }, { status: 500 });
  }
}
