import React from "react";
import Image from "next/image";
import style from "./page.module.css";
import Button from "@/components/button/Button";
import { items } from "./data";
import { notFound } from "next/navigation";

const getData = (cat) => {
  const data = items[cat];
  if (data) {
    return data;
  }
  return notFound;
};

const Category = ({ params }) => {
  const data = getData(params.category);
  return (
    <div>
      <h1 className={style.catTitle}>{params.category}</h1>
      
      {data.map((item) => (
        <div className={style.item} key={item.id}>
          <div className={style.content}>
            <h1 className={style.title}>{item.title}</h1>
            <p className={style.desc}>{item.desc}</p>
            <Button text="See More" url="#" />
          </div>
          <div className={style.imgContainer}>
            <Image
              className={style.img}
              fill={true}
              src={item.image}
              alt=""
            />
          </div>
        </div>
      ))}
    </div>
  );

};

export default Category;
