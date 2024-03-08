import NextAuth from "next-auth";
import GithubProvider from "next-auth/providers/github";
import CredentialsProvider from "next-auth/providers/credentials";
import bcrypt from "bcryptjs";
import pool from "@/utils/db";

const handler = NextAuth({
  providers: [
    CredentialsProvider({
      id: "credentials",
      name: "Credentials",
      // 认证
      async authorize(credentials) {
        try {
          const connect = await pool.getConnection()

          const [user, fields] = await connect.query("SELECT * FROM user where email = ?", [credentials.email])
          
          // 如果用户存在，确认密码
          if (user) {
            const isPasswordCorrect = await bcrypt.compare(
              credentials.password,
              user[0].password
            )
            if (isPasswordCorrect) {
              return user[0]
            } else {
              throw new Error("wrong password")
            }
          } else {
            throw new Error("user not found")
          }

        } catch (err) {
          console.log(err.message)
          throw new Error(err)
        }
      }
    }),
    GithubProvider({
      clientId: process.env.GITHUB_ID,
      clientSecret: process.env.GITHUB_SECRET,
      // 指定回调 URL
      signIn: async function signIn(user, account, profile) {
        // 使用 session 来保存用户信息
        const session = {
          accessToken: account.accessToken,
          user: {
            id: user.id,
            name: user.name,
            email: user.email,
            image: user.image
          }
        };
        return true; // 返回 true 表示成功登录
      },
      redirect_uri: "http://localhost:3000/dashboard"
    }),
  ],
  // 当发生错误/登录失败时：
  // error的错误信息会作为参数出现在浏览器地址栏
  pages: {
    error: "/dashboard/login",
  },
});

// 登录/注册的密码与邮箱 - post，保存会话 - get
export { handler as GET, handler as POST };
