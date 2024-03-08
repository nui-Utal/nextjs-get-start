import React from "react";
import style from "./page.module.css";
import Link from "next/link";
import Image from "next/image";

async function getData() {
  const response = await fetch("http://localhost:3000/api/posts", {
    cache: "no-store", // 数据变化很快，不缓存
    // cache: "force-cache" // 数据不变化，默认
    // next: { revalidate: 10 }, // 不太频繁的数据变化，10s进行一次验证
  });
  return await response.json()
}

const Blog = async () => {
  const posts = await getData()
  return (
    <div className={style.mainContainer}>
      {posts ? (
        posts.data.map((item) => (
          <Link
            href={`/blog/${item.id}`}
            className={style.container}
            key={item.id}
          >
            <div className={style.imageContainer}>
              <Image
                src={item.img}
                alt=""
                width={400}
                height={230}
                className={style.image}
              />
            </div>
            <div className={style.content}>
              <h1 className={style.title}>{item.title}</h1>
              <p className={style.desc}>{item.intro}</p>
            </div>
          </Link>
        ))
      ) : (
        <p>Loading...</p>
      )}
    </div>
  );
};

export default Blog;
