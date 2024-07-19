#ifndef MWE_MODEL_LOADING_GRAPHICS_HPP
#define MWE_MODEL_LOADING_GRAPHICS_HPP

#include "shader_pipeline/shader_pipeline.hpp"
#include "../graphics/textured_model_loading/textured_model_loading.hpp"
#include "../interaction/camera/camera.hpp"

// eventually physics needs to be removed from it too big of an argument
void render(GLuint shader_program_id, Model &model, glm::vec3 &character_position, Camera &camera, unsigned int *screen_width, unsigned int *screen_height);

#endif //MWE_MODEL_LOADING_GRAPHICS_HPP
