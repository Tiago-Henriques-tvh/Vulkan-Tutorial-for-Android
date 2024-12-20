#version 450

layout(location = 0) in vec3 fragColor; // Cor interpolada do vértice

layout(location = 0) out vec4 outColor; // Cor de saída para o framebuffer

void main() {
    // Define a cor de saída
    outColor = vec4(fragColor, 1.0);
}
