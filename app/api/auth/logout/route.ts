import { NextResponse } from "next/server";
import { db } from "../../../../lib/db";

export async function POST(request: Request) {
  const token = request.headers.get("cookie")?.match(/(?:^|;\s*)satu_session=([^;]+)/)?.[1];
  const response = NextResponse.json({ message: "Logout berhasil." });
  response.cookies.set("satu_session", "", { expires: new Date(0), path: "/" });

  try {
    if (token) await db.execute("DELETE FROM sessions WHERE token = ?", [token]);
  } catch (error) {
    console.error("Logout database error:", error);
  }
  return response;
}
