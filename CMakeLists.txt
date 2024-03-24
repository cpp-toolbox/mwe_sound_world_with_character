cmake_minimum_required(VERSION 3.10)

project(openal_mwe)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(openal_mwe main.cpp
        sound/load_sound_file.cpp
        interaction/camera/camera.cpp
        interaction/mouse/mouse.cpp
        graphics/model_loading/model_loading.cpp
        graphics/shader_pipeline/shader_pipeline.cpp
        graphics/window/window.cpp
        graphics/graphics.cpp
        sound/sound_system.cpp
        sound/sound_system.hpp
)

set(LIBTYPE STATIC)

add_subdirectory(external_libraries/openal-soft)
include_directories(external_libraries/openal-soft/include)

set(ENABLE_EXTERNAL_LIBS OFF)
# list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOgg.cmake libsndfile/cmake/FindVorbis.cmake libsndfile/cmake/FindFLAC.cmake libsndfile/cmake/FindOpus.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOgg.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindVorbis.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindFLAC.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOpus.cmake)
add_subdirectory(external_libraries/libsndfile)
include_directories(external_libraries/libsndfile/include)

# GLAD: opengl function loader

include_directories(external_libraries/glad_opengl_3.3_core/include)
add_subdirectory(external_libraries/glad_opengl_3.3_core)

# GLM: opengl mathematics

include_directories(external_libraries/glm)
add_subdirectory(external_libraries/glm)

# GLFW: opengl framework

# disable unnessary steps in build
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

# ASSIMP: Asset Importer

# only use obj to speed up compilation
set(ASSIMP_INSTALL OFF CACHE BOOL "" FORCE)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)
set(ASSIMP_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(ASSIMP_NO_EXPORT OFF CACHE BOOL "" FORCE)
set(ASSIMP_BUILD_ALL_EXPORTERS_BY_DEFAULT OFF CACHE BOOL "" FORCE)
set(ASSIMP_BUILD_OBJ_IMPORTER ON CACHE BOOL "" FORCE)

# STB_H: single file libraries
include_directories(external_libraries/stb)

include_directories(external_libraries/assimp/include)
add_subdirectory(external_libraries/assimp)

add_subdirectory(external_libraries/glfw)

target_link_libraries(openal_mwe OpenAL SndFile::sndfile glfw glad assimp)
