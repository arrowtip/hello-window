#version 330 core
layout (location = 0) in vec3 in_position;
layout (location = 1) in vec4 in_color;
layout (location = 2) in vec2 in_tex_coords;

out vec4 vertex_color;
out vec2 tex_coords;

void main() {
    gl_Position = vec4(in_position, 1.0f);
    vertex_color = in_color;
    tex_coords = in_tex_coords;
}
