import { Inter } from "next/font/google";
import "./globals.css";
import Navbar from "@/components/navbar/Navbar";
import Footer from "@/components/footer/Footer";
import { ThemeProvider } from "../context/ThemeContext";
import AuthProvider from "@/components/authProvider/authProvider";

const inter = Inter({ subsets: ["latin"] });

// 在不同的页面均可以使用这种方式进行设置
export const metadata = {
  title: "Lama dev",
  description: "my first next app",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <ThemeProvider>
          <AuthProvider>
            <div className="container">
              <Navbar />
              {children}
              <Footer />
            </div>
          </AuthProvider>
        </ThemeProvider>
      </body>
    </html>
  );
}
