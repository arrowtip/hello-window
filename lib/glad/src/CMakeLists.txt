cmake_minimum_required(VERSION 3.25)
project(glad)

include_directories(include)

add_library(glad include/glad/glad.h include/KHR/khrplatform.h src/glad.c)
target_include_directories(${PROJECT_NAME} PUBLIC include)
