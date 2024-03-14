#version 330

in vec2 texture_position;
uniform sampler2D texture_sampler;
varying vec3 color;

void main() {
    gl_FragColor = texture(texture_sampler, texture_position);
//    gl_FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}
