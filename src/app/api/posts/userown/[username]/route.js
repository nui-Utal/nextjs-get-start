import pool from "@/utils/db"
import { NextResponse } from "next/server"

export async function GET(request, { params }) {
  try {
    const { username } = params
    const connection = await pool.getConnection()
    const [rows, fields] = await connection.query('SELECT id, img, title FROM post WHERE username = ?',
      [username])
    return NextResponse.json({ data: rows }, { status: 201 })
  } catch (err) {
    return NextResponse.json({ error: 'Database Error' }, { status: 500 })
  }
}