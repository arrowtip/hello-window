#version 330 core
in vec4 vertex_color;
in vec2 tex_coords;

out vec4 frag_color;

uniform sampler2D texture_2d;

void main() {
    frag_color = texture(texture_2d, tex_coords) * vertex_color;
}
