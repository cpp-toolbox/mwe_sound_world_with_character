#version 330

attribute vec3 position;
attribute vec3 normal;
attribute vec2 passthrough_texture_position;

uniform mat4 local_to_world;
uniform mat4 world_to_camera;
uniform mat4 camera_to_clip;

out vec2 texture_position;

void main() {
    // CWL v
    gl_Position = camera_to_clip * world_to_camera * local_to_world * vec4(position, 1.0);
    texture_position = passthrough_texture_position;
}
