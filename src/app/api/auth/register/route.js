import pool from "@/utils/db"
import bcrypt from "bcryptjs"
import { NextResponse } from "next/server"

export const POST = async (request) => {
    const { name, email, password } = await request.json();  // request.json()是异步的
    const hashedPassword = await bcrypt.hash(password, 5)
    try {
        const connection = await pool.getConnection()
        await connection.query('INSERT INTO user (name, email, password) values (?, ?, ?)',
            [name, email, hashedPassword])
        connection.release()
        return new NextResponse("user has been created", { status: 201 })
    } catch (err) {
        return new NextResponse(err.message, { status: 500 })
    }
}