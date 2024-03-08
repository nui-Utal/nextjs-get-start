This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

本项目参考并实现了该视频的项目：https://www.youtube.com/watch?v=VE8BkImUciY 

> 本使用了本地mysql数据库（视频使用云的mongodb）；在dashboard的数据刷新方式略有不同；关于第三方登录：不支持使用谷歌，而支持使用github

老师的代码：https://github.com/safak/nextjs-tutorial

## 运行项目

以npm为例，请先下载依赖：

```bash
npm i
```

本项目连接本地的 `mysql` 数据库，请确保当你运行时已经修改了 `.env` 文件参数，我的数据是 `test.sql` 

然后启动项目：

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## 功能体验tips

### 登录

点击 `dashboar` 需要登录/注册，推荐使用这个账号：

- email

  ```
  user@gmail.com
  ```

- password

  ```
  user
  ```

> ps: 未编写设置头像的功能，默认头像是：https://gd-hbimg.huaban.com/a0a833a39d4a6763877d7152a96d07a6ab1746142c55c-QuCQax_fw658webp
> 需要修改请打开数据库中的user表，修改avatar字段。

### 上传图片

nextjs不推荐引用外部图片，而当你需要引用外部图片时，需要 “登记” 图片的域名，可以在 `next.config.mjs` 中添加或修改

```js
/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
        	// 分别是视频使用的图片网站，花瓣，微信公众号
        domains: ['images.pexels.com','gd-hbimg.huaban.com', 'mmbiz.qpic.cn'],
    },
};

export default nextConfig;
```



## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
