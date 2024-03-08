import pool from "@/utils/db"
import { NextResponse } from "next/server"

export async function GET(request, { params }) {
    try {
        const { id } = params
        const connection = await pool.getConnection()
        const [rows, fields] =
            await connection.query('SELECT p.*, u.avatar FROM post p LEFT JOIN user u ON p.username = u.name WHERE p.id = ?', [id])
        connection.release()
        return NextResponse.json({ data: rows }, { status: 200 })
    } catch (error) {
        console.error('Error:', error)
    }
}

export async function DELETE(request, { params }) {
    const { id } = params;
    try {
        const connection = await pool.getConnection()
        await connection.query("DELETE FROM post WHERE id = ?", [id])
        connection.release()
        return NextResponse.json({ status: 201 })
    } catch (err) {
        return NextResponse.json({ error: 'Database Error' }, { status: 500 })
    }
}