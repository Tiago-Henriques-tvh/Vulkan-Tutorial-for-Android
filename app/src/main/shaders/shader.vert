#version 450

layout(location = 0) in vec3 inPos;    // Position from vertex data
layout(location = 1) in vec3 inColor;  // Color from vertex data

out vec3 fragColor; // Output to fragment shader

uniform mat4 model;        // Model matrix
uniform mat4 view;         // View matrix
uniform mat4 projection;   // Projection matrix

void main() {
    // Apply the transformation using the correct order
    gl_Position = projection * view * model * vec4(inPos, 1.0);

    // Pass the color to the fragment shader
    fragColor = inColor;
}
