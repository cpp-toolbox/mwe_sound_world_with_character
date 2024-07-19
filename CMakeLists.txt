cmake_minimum_required(VERSION 3.10)
project(openal_mwe)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(openal_mwe src/main.cpp
        src/interaction/camera/camera.cpp
        src/interaction/mouse/mouse.cpp

        src/graphics/textured_model_loading/textured_model_loading.cpp
        src/graphics/shader_pipeline/shader_pipeline.cpp
        src/graphics/shaders/CWL_uniform_binder_camera_pov.cpp
        src/graphics/window/window.cpp
        src/graphics/graphics.cpp

        src/sound_system/sound_system.cpp
        src/sound_system/load_sound_file.cpp

        src/utils/game_loop/game_loop.cpp
        src/utils/stopwatch/stopwatch.cpp
)

find_package(glfw3)
find_package(glad)
find_package(assimp)
find_package(stb)
find_package(glm)
# find_package(SndFile)
find_package(OpenAL)

add_subdirectory(external_libraries/libsndfile)
include_directories(external_libraries/libsndfile/include)

target_link_libraries(${PROJECT_NAME} glfw glad::glad assimp::assimp stb::stb glm::glm SndFile::sndfile OpenAL::OpenAL)