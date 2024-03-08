"use client";
import React from "react";
import useSWR from "swr";
import styles from "./page.module.css";
import { useSession } from "next-auth/react";
import { useRouter } from "next/navigation";
import Image from "next/image";
import { useState } from "react";
import Link from "next/link";

const Dashboard = () => {
  const session = useSession();

  const router = useRouter();

  const fetcher = (...args) => fetch(...args).then((res) => res.json());

  // 页面包含频繁更新的数据，并且你不需要预渲染数据，那么 SWR 是一个完美选择
  var { data, mutate, error, isLoading } = useSWR(
    `/api/posts/userown/${session?.data?.user.name}`,
    fetcher
  );

  console.log(data);

  const handleSubmit = async (e) => {
    e.preventDefault();
    const title = e.target[0].value;
    const desc = e.target[1].value;
    const img = e.target[2].value;
    const content = e.target[3].value;
    try {
      fetch("/api/posts", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          title,
          desc,
          img,
          content,
          username: session.data.user.name,
        }),
      });
      // 重置输入框
      e.target.reset();
      data = (
        await fetch(`/api/posts/userown/${session?.data?.user.name}`)
      ).json();
      mutate(data); // 将 revalidate 参数设置为 false，避免触发重新获取数据的行为
    } catch (err) {
      console.log(err);
    }
  };

  const handleDelete = async (id) => {
    try {
      fetch(`/api/posts/${id}`, {
        method: "DELETE",
      });
      // 直接使用 mutate(); 更新数据较慢，直接处理页面的数据
      mutate(
        (data) => ({
          data: data.data.filter((post) => post.id !== id), // 在前端删除指定id的文章数据
        }),
        false
      );
    } catch (err) {
      console.log(err.message);
    }
    // mutate();
  };

  if (session.status === "loading") {
    return <p>Loading...</p>;
  }

  if (session.status === "unauthenticated") {
    router?.push("/dashboard/login");
  }

  if (session.status === "authenticated") {
    return (
      <div className={styles.container}>
        <div className={styles.posts}>
          {isLoading
            ? "loading"
            : data.data?.map((post) => (
                <div className={styles.post} key={post.id}>
                  <Link href={`/blog/${post.id}`} className={styles.postLink}>
                    <div className={styles.imgContainer}>
                      <Image src={post.img} alt="" width={200} height={120} />
                    </div>
                    <h2 className={styles.postTitle}>{post.title}</h2>
                  </Link>
                  <span
                    className={styles.delete}
                    onClick={() => handleDelete(post.id)}
                  >
                    X
                  </span>
                </div>
              ))}
        </div>
        <div className={styles.form}>
          <form className={styles.new} onSubmit={handleSubmit}>
            <h1>Add New Post</h1>
            <input type="text" placeholder="Title" className={styles.input} />
            <input type="text" placeholder="Desc" className={styles.input} />
            <input type="text" placeholder="Image" className={styles.input} />
            <textarea
              placeholder="Content"
              className={styles.textArea}
              cols="30"
              rows="10"
            ></textarea>
            <button className={styles.button}>Send</button>
          </form>
        </div>
      </div>
    );
  }
};

export default Dashboard;
