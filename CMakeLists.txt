cmake_minimum_required(VERSION 3.25)
project(hello-window)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR})
set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES 
    ${PROJECT_SOURCE_DIR}/src/main.cpp
    )
set(HEADER_FILES
    ${PROJECT_SOURCE_DIR}/src/shader.hpp
    )
add_executable(${PROJECT_NAME}.exec ${SOURCE_FILES} ${HEADER_FILES})

# include local glad source code
add_subdirectory(lib/glad/ ${CMAKE_CURRENT_BINARY_DIR}/lib/glad)
target_link_libraries(${PROJECT_NAME}.exec glad)

# glfw
find_package(glfw3 REQUIRED)
target_link_libraries(${PROJECT_NAME}.exec glfw)

# OpenGL
find_package(OpenGL REQUIRED)
message(STATUS "found OpenGL in ${OpenGL_INLCUDE_DIR}")
target_link_libraries(${PROJECT_NAME}.exec OpenGL)

