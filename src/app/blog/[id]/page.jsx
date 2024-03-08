import React from 'react'
import Image from "next/image";
import styles from "./id.module.css";
import notFound from "next/navigation"

async function getData(params) {
  const response = await fetch(`http://localhost:3000/api/posts/${params.id}`, {
    next: { revalidate: 10 }, // 不太频繁的数据变化，10s进行一次验证
  });
  var data = await response.json()
  if (!data) {
    notFound()
  }
  return data
}

const Blog = async (params) => {
  const data = (await getData(params.params)).data[0]
  return (
    <div className={styles.container}>
      <div className={styles.top}>
        <div className={styles.info}>
          <h1 className={styles.title}>{data.title}</h1>
          <p className={styles.desc}>
            {data.desc}
          </p>
          <div className={styles.author}>
            <Image
              src={data.avatar?data.avatar:"https://gd-hbimg.huaban.com/a0a833a39d4a6763877d7152a96d07a6ab1746142c55c-QuCQax_fw658webp"}
              alt=""
              width={40}
              height={40}
              className={styles.avatar}
            />
            <span className={styles.username}>{data.username}</span>
          </div>
        </div>
        <div className={styles.imageContainer}>
          <Image
            src={data.img}
            alt=""
            fill={true}
            className={styles.image}
          />
        </div>
      </div>
      <div className={styles.content}>
        <p className={styles.text}>
         {data.content}
        </p>
      </div>
    </div>
  )
}

export default Blog