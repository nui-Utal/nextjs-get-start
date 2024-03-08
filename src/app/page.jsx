import Image from "next/image";
import styles from "./page.module.css";
import hero from "../../public/hero.png";
import Button from "@/components/button/Button";

export default function Home() {
  return (
    <div className={styles.container}>
      <div className={styles.items}>
        <h1 className={styles.title}>Better design for your digital products.</h1>
        <p className={styles.dosc}>
          Turning your ideas into reality is our mission. We bring the teams from the globle tech industry.
        </p>
        <Button url="/portfolio" text="See our works"></Button>
      </div>
      <div className={styles.items}>
        <Image src={hero} className={styles.img} alt=""></Image>
      </div>
    </div>
    
  );
}
