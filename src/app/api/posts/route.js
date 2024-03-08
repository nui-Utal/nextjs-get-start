import pool from "@/utils/db"
import { NextResponse } from "next/server"

export async function GET(request) {
  try {
    // 从数据池获取连接后执行 MySQL 查询
    const connection = await pool.getConnection()
    const [rows, fields] = await connection.query('SELECT id, title, intro, img FROM post')

    // 释放连接回连接池
    connection.release()

    return NextResponse.json({ data: rows }, { status: 201 })
  } catch (error) {
    console.error('Error:', error)
    return NextResponse.json({ error: 'Database Error' }, { status: 500 })
  }
}

export async function POST(request) {
  const data = await request.json()
  try {
    const connection = await pool.getConnection()
    const res = await connection.query('INSERT INTO post (username, title, intro, content, img) VALUE(?, ?, ?, ?, ?)',
      [data.username, data.title, data.desc, data.content, data.img])
    connection.release()
    return NextResponse.json({ data: res }, { status: 201 })
  } catch (err) {
    return NextResponse.json({ error: 'Database Error' }, { status: 500 })
  }
}