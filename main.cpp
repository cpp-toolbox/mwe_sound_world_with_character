#include "AL/al.h"
#include "AL/alc.h"
#include "AL/alext.h"
#include "sndfile.h"

#include <cassert>
#include <cstddef>
#include <cstdio>
#include <unistd.h>

#include "sound/load_sound_file.hpp"

int initialize_openal();
void deinitialize_openal();
void al_nssleep(unsigned long nsec);

int main() {
  initialize_openal();

  ALuint source, buffer;
  ALfloat offset;
  ALenum state;

  buffer = loud_sound_and_generate_openal_buffer("../taunt.wav");
  if (!buffer) {
    deinitialize_openal();
    return 1;
  }

  /* Create the source to play the sound with. */
  source = 0;
  alGenSources(1, &source);
  alSourcei(source, AL_BUFFER, (ALint)buffer);
  assert(alGetError() == AL_NO_ERROR && "Failed to setup sound source");

  /* Play the sound until it finishes. */
  alSourcePlay(source);
  do {
    al_nssleep(10000000);
    alGetSourcei(source, AL_SOURCE_STATE, &state);

    /* Get the source offset. */
    alGetSourcef(source, AL_SEC_OFFSET, &offset);
    printf("\rOffset: %f  ", offset);
    fflush(stdout);
  } while (alGetError() == AL_NO_ERROR && state == AL_PLAYING);
  printf("\n");

  /* All done. Delete resources, and close down OpenAL. */
  alDeleteSources(1, &source);
  alDeleteBuffers(1, &buffer);

  deinitialize_openal();

  return 0;
}

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


