package com.example.typedstack

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform