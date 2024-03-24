#include <stdexcept>
#include <cassert>
#include "sound_system.hpp"
#include "load_sound_file.hpp"

#include "AL/alc.h"
#include "AL/alext.h"
#include "sndfile.h"

SoundSystem::SoundSystem() {
    initialize_openal();
}

SoundSystem::~SoundSystem() {
    deinitialize_openal();
}

void SoundSystem::initialize_openal() {
    const ALCchar *name;
    ALCdevice *device;
    ALCcontext *ctx;

    /* Open and initialize a device */

    device = alcOpenDevice(NULL); // open the preferred device

    if (!device) {
        fprintf(stderr, "Could not open a device!\n");
        throw std::runtime_error("could not open a device");
    }

    ctx = alcCreateContext(device, NULL);
    if (ctx == NULL || alcMakeContextCurrent(ctx) == ALC_FALSE) {
        if (ctx != NULL)
            alcDestroyContext(ctx);
        alcCloseDevice(device);
        fprintf(stderr, "Could not set a context!\n");
        throw std::runtime_error("Could not set a context!\n");
    }

    name = NULL;
    if (alcIsExtensionPresent(device, "ALC_ENUMERATE_ALL_EXT"))
        name = alcGetString(device, ALC_ALL_DEVICES_SPECIFIER);
    if (!name || alcGetError(device) != AL_NO_ERROR)
        name = alcGetString(device, ALC_DEVICE_SPECIFIER);

    printf("Opened \"%s\"\n", name);
}


void SoundSystem::deinitialize_openal() {

    /* All done. Delete resources, and close down OpenAL. */
    for (auto const& [sound_name, buffer_id] : sound_name_to_loaded_buffer) {
        alDeleteBuffers(1, &buffer_id);
    }

    for (auto const& [source_name,source_id] : source_name_to_source_id) {
        alDeleteSources(1, &source_id);
    }

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

void SoundSystem::create_sound_source(const std::string& source_name) {

    bool source_name_available = source_name_to_source_id.count(source_name) == 0;
    if (!source_name_available) {
        throw std::runtime_error("a source with the same name was already created.");
    }

    /* Create the source to play the sound with. */
    ALuint source_id = 0;
    alGenSources(1, &source_id);
    assert(alGetError() == AL_NO_ERROR && "Failed to setup sound source");

    source_name_to_source_id[source_name] = source_id;

}

void SoundSystem::play_sound(const std::string& source_name, const std::string& sound_name) {

    bool source_exists = source_name_to_source_id.count(source_name) == 1;
    bool sound_exists = sound_name_to_loaded_buffer.count(sound_name) == 1;

    if (!sound_exists) {
        throw std::runtime_error("you tried to play a sound which doesn't exist");
    }
    if (!source_exists) {
        throw std::runtime_error("you tried to play a sound from a source which doesn't exist");
    }

    ALuint loaded_sound_buffer_id = sound_name_to_loaded_buffer[sound_name];
    ALuint source_id = source_name_to_source_id[source_name];


    alSourcei(source_id, AL_BUFFER, (ALint)loaded_sound_buffer_id);
    assert(alGetError() == AL_NO_ERROR && "Failed to setup sound source");

    alSourcePlay(source_id);

}

void SoundSystem::load_sound_into_system_for_playback(const std::string& sound_name, const char *filename) {
    bool sound_name_available = sound_name_to_loaded_buffer.count(sound_name) == 0;
    if (!sound_name_available) {
        throw std::runtime_error("a sound with the same name was already loaded.");
    }

    ALuint sound_buffer = load_sound_and_generate_openal_buffer(filename);

    if (!sound_buffer) {
        deinitialize_openal();
        throw std::runtime_error("failed to generate sound buffer");
    }

    sound_name_to_loaded_buffer[sound_name] = sound_buffer;
}

void SoundSystem::set_listener_position(float x, float y, float z) {
    ALfloat listener_pos[] = {x, y, z};
    alListenerfv(AL_POSITION,listener_pos);
    assert(alGetError() == AL_NO_ERROR && "Failed to setup sound source");
}


