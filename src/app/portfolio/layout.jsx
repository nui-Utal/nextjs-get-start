import React from "react";
import style from "./page.module.css";

const layout = ({ children }) => {
  return (
    <div>
      <h1 className={style.mainTitle}>Our Works</h1>
      {children}
    </div>
  );
};

export default layout;
