package com.example.multiplatform_mobile

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform