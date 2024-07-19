#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <functional>

#include "interaction/character/character.hpp"
#include "interaction/camera/camera.hpp"
#include "interaction/mouse/mouse.hpp"

#include "graphics/shader_pipeline/shader_pipeline.hpp"
#include "graphics/textured_model_loading/textured_model_loading.hpp"
#include "graphics/window/window.hpp"
#include "graphics/graphics.hpp"

#include "utils/game_loop/game_loop.hpp"

#include "sound_system/sound_system.hpp"

unsigned int SCR_WIDTH = 800;
unsigned int SCR_HEIGHT = 600;

std::function<void(double)> update_player_state_closure(LiveInputState &live_input_state, SoundSystem &sound_system, Character &character, Mouse &mouse, Camera &camera) {
    return [&live_input_state, &sound_system, &character, &mouse, &camera](double delta_time) {

        auto [change_in_yaw_angle, change_in_pitch_angle] = mouse.get_yaw_pitch_deltas(live_input_state.mouse_position_x, live_input_state.mouse_position_y)    ;
        camera.update_look_direction(change_in_yaw_angle, change_in_pitch_angle);

        float float_delta_time = (float) delta_time;
        glm::vec3 strafe_direction = glm::cross(camera.look_direction, camera.up_direction);

        if (live_input_state.forward_pressed)
            character.position += camera.look_direction * float_delta_time;
        if (live_input_state.backward_pressed)
            character.position -= camera.look_direction * float_delta_time;
        if (live_input_state.right_pressed)
            character.position += strafe_direction * float_delta_time;
        if (live_input_state.left_pressed)
            character.position -= strafe_direction * float_delta_time;

        sound_system.set_listener_position(character.position.x, character.position.y, character.position.z);

    };
}

struct InitializationData {
    ShaderPipeline shader_pipeline;
    Model model;
    GLFWwindow *window;
};

InitializationData initialize(LiveInputState *live_input_state) {
    GLFWwindow *window =
            initialize_glfw_glad_and_return_window(&SCR_WIDTH, &SCR_HEIGHT, "mwe sound world", false, true, false, live_input_state);

    glEnable(GL_DEPTH_TEST); // configure global opengl state
    ShaderPipeline shader_pipeline{};

    shader_pipeline.load_in_shaders_from_file("../../src/graphics/shaders/CWL_v_transformation_with_texture_position_passthrough.vert",
                                              "../../src/graphics/shaders/textured.frag"); // build and compile shaders

    Model model("../../assets/backpack/backpack.obj", shader_pipeline.shader_program_id);
    InitializationData initialization_data = {shader_pipeline, model, window};

    return initialization_data;
}

std::function<int()> termination_closure(GLFWwindow *window) {
    return [window]() { return glfwWindowShouldClose(window); };
}

std::function<void()> render_closure(Camera &camera, Character &character, Model &model, ShaderPipeline &shader_pipeline, GLFWwindow *window) {
    return [ &camera, &character, &shader_pipeline, &model, window]() {

        render(shader_pipeline.shader_program_id, model, character.position, camera, &SCR_WIDTH, &SCR_HEIGHT);
        glfwSwapBuffers(window);
        glfwPollEvents();
    };

}

int main() {
    Character character;
    Camera camera;
    Mouse mouse;
    SoundSystem sound_system;
    LiveInputState live_input_state;

    auto [shader_pipeline, model, window] = initialize(&live_input_state);

    sound_system.load_sound_into_system_for_playback("music", "../../assets/audio/fishin_mono.wav");
    sound_system.create_sound_source("origin");
    sound_system.play_sound("origin", "music");

    GameLoop game_loop;
    std::function<void(double)> update_player_state = update_player_state_closure(live_input_state, sound_system, character, mouse, camera);
    std::function<void()> render = render_closure(camera, character, model, shader_pipeline, window);
    std::function<int()> termination = termination_closure(window);

    game_loop.start(60.0, update_player_state, render, termination);

    glfwTerminate(); // glfw: terminate, clearing all previously allocated GLFW resources.
    return 0;
}
