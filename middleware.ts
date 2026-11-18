import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";

export function middleware(request: NextRequest) {
  const session = request.cookies.get("satu_session")?.value;
  if (!session) {
    return NextResponse.redirect(new URL("/login.html", request.url));
  }
  return NextResponse.next();
}

export const config = {
  matcher: ["/index.html", "/tambah-game.html", "/suka.html"],
};
