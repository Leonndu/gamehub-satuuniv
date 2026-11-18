import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "SATU GameHub",
  description: "SATU GameHub dashboard",
};

export default function RootLayout({ children }: LayoutProps<"/">) {
  return (
    <html lang="id">
      <body className="min-h-full flex flex-col">{children}</body>
    </html>
  );
}
