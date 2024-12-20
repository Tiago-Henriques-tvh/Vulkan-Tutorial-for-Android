#version 450

in vec3 fragColor;  // Input color from vertex shader

out vec4 color;     // Output color to the framebuffer

void main() {
    color = vec4(fragColor, 1.0); // Set the color to the passed value with full opacity
}
