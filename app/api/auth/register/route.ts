import { NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import { db } from "../../../../lib/db";

export async function POST(request: Request) {
  try {
    const { username, password } = await request.json();
    const cleanUsername = String(username || "").trim();

    if (cleanUsername.length < 3 || cleanUsername.length > 50) {
      return NextResponse.json({ message: "Username harus 3-50 karakter." }, { status: 400 });
    }
    if (String(password || "").length < 6) {
      return NextResponse.json({ message: "Password minimal 6 karakter." }, { status: 400 });
    }

    const [existing] = await db.execute("SELECT id FROM users WHERE username = ? LIMIT 1", [cleanUsername]);
    if ((existing as unknown[]).length > 0) {
      return NextResponse.json({ message: "Username sudah digunakan." }, { status: 409 });
    }

    const passwordHash = await bcrypt.hash(String(password), 12);
    await db.execute("INSERT INTO users (username, password_hash) VALUES (?, ?)", [cleanUsername, passwordHash]);
    return NextResponse.json({ message: "Akun berhasil dibuat." }, { status: 201 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ message: "Database belum siap atau konfigurasi salah." }, { status: 500 });
  }
}
