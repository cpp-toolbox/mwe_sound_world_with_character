#include "AL/al.h"
#include "AL/alc.h"
#include "AL/alext.h"
#include "sndfile.h"

#include <cassert>
#include <cstddef>
#include <cstdio>
#include <unistd.h>

#include "sound/load_sound_file.hpp"

#include <glad/gl.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include <optional>

#include "interaction/character/character.hpp"
#include "interaction/camera/camera.hpp"
#include "interaction/mouse/mouse.hpp"

#include "graphics/shader_pipeline/shader_pipeline.hpp"
#include "graphics/model_loading/model_loading.hpp"
#include "graphics/window/window.hpp"
#include "graphics/graphics.hpp"

const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

Character character;
Camera camera;
Mouse mouse;

float deltaTime = 0.0f;
float lastFrame = 0.0f;

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
void on_window_size_change(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

void on_mouse_move(GLFWwindow* window, double mouse_position_x, double mouse_position_y) {
    auto [change_in_yaw_angle, change_in_pitch_angle] = mouse.get_yaw_pitch_deltas(mouse_position_x, mouse_position_y)    ;
    camera.update_look_direction(change_in_yaw_angle, change_in_pitch_angle);
}

// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
void process_input(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);

    glm::vec3 strafe_direction = glm::cross(camera.look_direction, camera.up_direction);

    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        character.position += camera.look_direction * deltaTime;
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        character.position -= camera.look_direction * deltaTime;
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        character.position += strafe_direction * deltaTime;
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        character.position -= strafe_direction * deltaTime;
}

struct InitializationData {
    ShaderPipeline shader_pipeline;
    Model model;
    GLFWwindow *window;
};

std::optional<InitializationData> initialize() {

    auto optional_window = initialize_glfw_and_return_window(SCR_WIDTH, SCR_HEIGHT);

    if (!optional_window.has_value()) {
        return std::nullopt;
    }

    GLFWwindow * window = optional_window.value();

    glfwSetFramebufferSizeCallback(window, on_window_size_change);
    glfwSetCursorPosCallback(window, on_mouse_move);
    mouse.configure_with_glfw(window);

    glEnable(GL_DEPTH_TEST); // configure global opengl state

    ShaderPipeline shader_pipeline;
    shader_pipeline.load_in_shaders_from_file("../graphics/shaders/CWL_v_transformation_with_texture_position_passthrough.vert", "../graphics/shaders/textured.frag"); // build and compile shaders

    Model model;
    model.load_model("../assets/backpack/backpack.obj");
    model.configure_vertex_interpretation_for_shader(shader_pipeline);

//    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE); // draw in wireframe

    InitializationData initialization_data = { shader_pipeline, model, window};

    return initialization_data;

}

int initialize_openal();
void deinitialize_openal();
void al_nssleep(unsigned long nsec);

int initialize_openal() {
  const ALCchar *name;
  ALCdevice *device;
  ALCcontext *ctx;

  /* Open and initialize a device */

  device = alcOpenDevice(NULL); // open the preferred device

  if (!device) {
    fprintf(stderr, "Could not open a device!\n");
    return 1;
  }

  ctx = alcCreateContext(device, NULL);
  if (ctx == NULL || alcMakeContextCurrent(ctx) == ALC_FALSE) {
    if (ctx != NULL)
      alcDestroyContext(ctx);
    alcCloseDevice(device);
    fprintf(stderr, "Could not set a context!\n");
    return 1;
  }

  name = NULL;
  if (alcIsExtensionPresent(device, "ALC_ENUMERATE_ALL_EXT"))
    name = alcGetString(device, ALC_ALL_DEVICES_SPECIFIER);
  if (!name || alcGetError(device) != AL_NO_ERROR)
    name = alcGetString(device, ALC_DEVICE_SPECIFIER);
  printf("Opened \"%s\"\n", name);

  return 0;
}

/* CloseAL closes the device belonging to the current context, and destroys the
 * context. */
void deinitialize_openal() {

  ALCdevice *device;
  ALCcontext *ctx;

  ctx = alcGetCurrentContext();
  if (ctx == NULL)
    return;

  device = alcGetContextsDevice(ctx);

  alcMakeContextCurrent(NULL);
  alcDestroyContext(ctx);
  alcCloseDevice(device);
}

void al_nssleep(unsigned long nsec) { usleep(nsec / 1000000); }




int main() {

//    SOUND START

    initialize_openal();

    ALuint source, buffer;
    ALfloat offset;
    ALenum state;

    buffer = loud_sound_and_generate_openal_buffer("../fishin_mono.wav");
    if (!buffer) {
        deinitialize_openal();
        return 1;
    }

    /* Create the source to play the sound with. */
    source = 0;
    alGenSources(1, &source);
    alSourcei(source, AL_BUFFER, (ALint)buffer);
    assert(alGetError() == AL_NO_ERROR && "Failed to setup sound source");

    ALfloat zero[] = {0.0f, 0.0f, 0.0f};

    alSourcefv(source,AL_POSITION,zero);
    assert(alGetError() == AL_NO_ERROR && "Failed to setup source position");

    /* Play the sound until it finishes. */
    alSourcePlay(source);
//    do {
////        al_nssleep(10000000);
//        alGetSourcei(source, AL_SOURCE_STATE, &state);
//
//        /* Get the source offset. */
//        alGetSourcef(source, AL_SEC_OFFSET, &offset);
//        printf("\rOffset: %f  ", offset);
//        fflush(stdout);
//    } while (alGetError() == AL_NO_ERROR && state == AL_PLAYING);
//    printf("\n");


//    SOUND END

    std::optional<InitializationData> id = initialize();

    if (!id.has_value()) {
        return -1;
    }
    auto [shader_pipeline, model, window ] = id.value();

    while (!glfwWindowShouldClose(window))
    {
        // per-frame time logic
        float currentFrame = static_cast<float>(glfwGetTime());
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        process_input(window);
        render(shader_pipeline, model, character.position, camera, SCR_WIDTH, SCR_HEIGHT);

        ALfloat listener_pos[] = {character.position.x, character.position.y, character.position.z};

        alListenerfv(AL_POSITION,listener_pos);
        assert(alGetError() == AL_NO_ERROR && "Failed to setup sound source");

        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        glfwSwapBuffers(window);
        glfwPollEvents();
    }


    /* All done. Delete resources, and close down OpenAL. */
    alDeleteSources(1, &source);
    alDeleteBuffers(1, &buffer);

    deinitialize_openal();

    glfwTerminate(); // glfw: terminate, clearing all previously allocated GLFW resources.
    return 0;
}
