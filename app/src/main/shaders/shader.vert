#version 450

layout(location = 0) in vec2 inPos;    // Position from vertex data
layout(location = 1) in vec3 inColor;  // Color from vertex data

layout(location = 0) out vec3 fragColor;

layout(set = 0, binding = 0) uniform UBO {
    mat4 model;
    mat4 view;
    mat4 projection;
} ubo;

void main() {
    // Apply the transformation using the correct order
    gl_Position = ubo.projection * ubo.view * ubo.model * vec4(inPos, 0.0, 1.0);

    // Pass the color to the fragment shader
    fragColor = inColor;
}
