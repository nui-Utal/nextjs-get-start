import React from "react";
import style from "./page.module.css";
import Image from "next/image";
import Button from "@/components/button/Button";

const Contect = () => {
  return (
    <div className={style.container}>
      <div className={style.title}>Let&lsquo;s keep touch</div>
      <div className={style.content}>
        <div className={style.imgContainer}>
          <Image
            src="/contact.png"
            alt=""
            fill={true}
            className={style.img}
          ></Image>
        </div>
        <form className={style.form}>
          <input type="text" placeholder="name" className={style.input}></input>
          <input
            type="email"
            placeholder="email"
            className={style.input}
          ></input>
          <textarea
            className={style.textarea}
            cols="30"
            rows="10"
            placeholder="message"
          ></textarea>
          <Button url="#" text="Send"></Button>
        </form>
      </div>
    </div>
  );
};

export default Contect;
