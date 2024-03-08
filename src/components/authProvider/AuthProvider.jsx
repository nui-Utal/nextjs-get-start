"use client"
import React from 'react'
import { SessionProvider } from 'next-auth/react'

// 由于 SessionProvider 需要使用contacts api，但不应该在服务器组件中使用，因此将其移动到客户端组件中
const AuthProvider = ({children}) => {
  return (
    <SessionProvider>{children}</SessionProvider>
  )
}

export default AuthProvider