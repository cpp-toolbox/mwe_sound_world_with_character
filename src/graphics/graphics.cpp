#include "graphics.hpp"

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "shaders/CWL_uniform_binder_camera_pov.hpp"
#include <functional>

void render(GLuint shader_program_id, Model &model, glm::vec3 &character_position, Camera &camera, unsigned int *screen_width, unsigned int *screen_height) {
    glClearColor(0.05f, 0.05f, 0.05f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    bind_CWL_matrix_uniforms_camera_pov(shader_program_id, *screen_width, *screen_height, character_position, glm::mat4(1.0f), camera, 90, 100);

    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL); // draw in wireframe

    model.draw();

}

//std::function<void(double)> render_closure(GLuint shader_program_id, Model &model, glm::vec3 &character_position, Camera &camera, int *screen_width, int *screen_height) {
//   return [shader_program_id, &model, &character_position, &camera, screen_width, screen_height](double delta_time) {
//       render(shader_program_id, model, character_position, camera, screen_width, screen_height);
//   };
//}
