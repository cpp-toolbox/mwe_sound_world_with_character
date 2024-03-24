#include "load_sound_file.hpp"
#include "AL/alc.h"
#include "AL/alext.h"
#include "sndfile.h"

#include <cinttypes>
#include <climits>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <stdexcept>

std::map<ALenum, const char *> openal_format_enum_to_string = {
        {AL_FORMAT_MONO8,                "Mono, U8"},
        {AL_FORMAT_MONO16,               "Mono, S16"},
        {AL_FORMAT_MONO_FLOAT32,         "Mono, Float32"},
        {AL_FORMAT_MONO_MULAW,           "Mono, muLaw"},
        {AL_FORMAT_MONO_ALAW_EXT,        "Mono, aLaw"},
        {AL_FORMAT_MONO_IMA4,            "Mono, IMA4 ADPCM"},
        {AL_FORMAT_MONO_MSADPCM_SOFT,    "Mono, MS ADPCM"},
        {AL_FORMAT_STEREO8,              "Stereo, U8"},
        {AL_FORMAT_STEREO16,             "Stereo, S16"},
        {AL_FORMAT_STEREO_FLOAT32,       "Stereo, Float32"},
        {AL_FORMAT_STEREO_MULAW,         "Stereo, muLaw"},
        {AL_FORMAT_STEREO_ALAW_EXT,      "Stereo, aLaw"},
        {AL_FORMAT_STEREO_IMA4,          "Stereo, IMA4 ADPCM"},
        {AL_FORMAT_STEREO_MSADPCM_SOFT,  "Stereo, MS ADPCM"},
        {AL_FORMAT_QUAD8,                "Quadraphonic, U8"},
        {AL_FORMAT_QUAD16,               "Quadraphonic, S16"},
        {AL_FORMAT_QUAD32,               "Quadraphonic, Float32"},
        {AL_FORMAT_QUAD_MULAW,           "Quadraphonic, muLaw"},
        {AL_FORMAT_51CHN8,               "5.1 Surround, U8"},
        {AL_FORMAT_51CHN16,              "5.1 Surround, S16"},
        {AL_FORMAT_51CHN32,              "5.1 Surround, Float32"},
        {AL_FORMAT_51CHN_MULAW,          "5.1 Surround, muLaw"},
        {AL_FORMAT_61CHN8,               "6.1 Surround, U8"},
        {AL_FORMAT_61CHN16,              "6.1 Surround, S16"},
        {AL_FORMAT_61CHN32,              "6.1 Surround, Float32"},
        {AL_FORMAT_61CHN_MULAW,          "6.1 Surround, muLaw"},
        {AL_FORMAT_71CHN8,               "7.1 Surround, U8"},
        {AL_FORMAT_71CHN16,              "7.1 Surround, S16"},
        {AL_FORMAT_71CHN32,              "7.1 Surround, Float32"},
        {AL_FORMAT_71CHN_MULAW,          "7.1 Surround, muLaw"},
        {AL_FORMAT_BFORMAT2D_8,          "B-Format 2D, U8"},
        {AL_FORMAT_BFORMAT2D_16,         "B-Format 2D, S16"},
        {AL_FORMAT_BFORMAT2D_FLOAT32,    "B-Format 2D, Float32"},
        {AL_FORMAT_BFORMAT2D_MULAW,      "B-Format 2D, muLaw"},
        {AL_FORMAT_BFORMAT3D_8,          "B-Format 3D, U8"},
        {AL_FORMAT_BFORMAT3D_16,         "B-Format 3D, S16"},
        {AL_FORMAT_BFORMAT3D_FLOAT32,    "B-Format 3D, Float32"},
        {AL_FORMAT_BFORMAT3D_MULAW,      "B-Format 3D, muLaw"},
        {AL_FORMAT_UHJ2CHN8_SOFT,        "UHJ 2-channel, U8"},
        {AL_FORMAT_UHJ2CHN16_SOFT,       "UHJ 2-channel, S16"},
        {AL_FORMAT_UHJ2CHN_FLOAT32_SOFT, "UHJ 2-channel, Float32"},
        {AL_FORMAT_UHJ3CHN8_SOFT,        "UHJ 3-channel, U8"},
        {AL_FORMAT_UHJ3CHN16_SOFT,       "UHJ 3-channel, S16"},
        {AL_FORMAT_UHJ3CHN_FLOAT32_SOFT, "UHJ 3-channel, Float32"},
        {AL_FORMAT_UHJ4CHN8_SOFT,        "UHJ 4-channel, U8"},
        {AL_FORMAT_UHJ4CHN16_SOFT,       "UHJ 4-channel, S16"},
        {AL_FORMAT_UHJ4CHN_FLOAT32_SOFT, "UHJ 4-channel, Float32"},
};

enum FormatType {
    Int16, Float, IMA4, MSADPCM
};

const char *FormatName(ALenum format) {
    // turn this into a map, and store the map in it's own file
    switch (format) {
        case AL_FORMAT_MONO8:
            return "Mono, U8";
        case AL_FORMAT_MONO16:
            return "Mono, S16";
        case AL_FORMAT_MONO_FLOAT32:
            return "Mono, Float32";
        case AL_FORMAT_MONO_MULAW:
            return "Mono, muLaw";
        case AL_FORMAT_MONO_ALAW_EXT:
            return "Mono, aLaw";
        case AL_FORMAT_MONO_IMA4:
            return "Mono, IMA4 ADPCM";
        case AL_FORMAT_MONO_MSADPCM_SOFT:
            return "Mono, MS ADPCM";
        case AL_FORMAT_STEREO8:
            return "Stereo, U8";
        case AL_FORMAT_STEREO16:
            return "Stereo, S16";
        case AL_FORMAT_STEREO_FLOAT32:
            return "Stereo, Float32";
        case AL_FORMAT_STEREO_MULAW:
            return "Stereo, muLaw";
        case AL_FORMAT_STEREO_ALAW_EXT:
            return "Stereo, aLaw";
        case AL_FORMAT_STEREO_IMA4:
            return "Stereo, IMA4 ADPCM";
        case AL_FORMAT_STEREO_MSADPCM_SOFT:
            return "Stereo, MS ADPCM";
        case AL_FORMAT_QUAD8:
            return "Quadraphonic, U8";
        case AL_FORMAT_QUAD16:
            return "Quadraphonic, S16";
        case AL_FORMAT_QUAD32:
            return "Quadraphonic, Float32";
        case AL_FORMAT_QUAD_MULAW:
            return "Quadraphonic, muLaw";
        case AL_FORMAT_51CHN8:
            return "5.1 Surround, U8";
        case AL_FORMAT_51CHN16:
            return "5.1 Surround, S16";
        case AL_FORMAT_51CHN32:
            return "5.1 Surround, Float32";
        case AL_FORMAT_51CHN_MULAW:
            return "5.1 Surround, muLaw";
        case AL_FORMAT_61CHN8:
            return "6.1 Surround, U8";
        case AL_FORMAT_61CHN16:
            return "6.1 Surround, S16";
        case AL_FORMAT_61CHN32:
            return "6.1 Surround, Float32";
        case AL_FORMAT_61CHN_MULAW:
            return "6.1 Surround, muLaw";
        case AL_FORMAT_71CHN8:
            return "7.1 Surround, U8";
        case AL_FORMAT_71CHN16:
            return "7.1 Surround, S16";
        case AL_FORMAT_71CHN32:
            return "7.1 Surround, Float32";
        case AL_FORMAT_71CHN_MULAW:
            return "7.1 Surround, muLaw";
        case AL_FORMAT_BFORMAT2D_8:
            return "B-Format 2D, U8";
        case AL_FORMAT_BFORMAT2D_16:
            return "B-Format 2D, S16";
        case AL_FORMAT_BFORMAT2D_FLOAT32:
            return "B-Format 2D, Float32";
        case AL_FORMAT_BFORMAT2D_MULAW:
            return "B-Format 2D, muLaw";
        case AL_FORMAT_BFORMAT3D_8:
            return "B-Format 3D, U8";
        case AL_FORMAT_BFORMAT3D_16:
            return "B-Format 3D, S16";
        case AL_FORMAT_BFORMAT3D_FLOAT32:
            return "B-Format 3D, Float32";
        case AL_FORMAT_BFORMAT3D_MULAW:
            return "B-Format 3D, muLaw";
        case AL_FORMAT_UHJ2CHN8_SOFT:
            return "UHJ 2-channel, U8";
        case AL_FORMAT_UHJ2CHN16_SOFT:
            return "UHJ 2-channel, S16";
        case AL_FORMAT_UHJ2CHN_FLOAT32_SOFT:
            return "UHJ 2-channel, Float32";
        case AL_FORMAT_UHJ3CHN8_SOFT:
            return "UHJ 3-channel, U8";
        case AL_FORMAT_UHJ3CHN16_SOFT:
            return "UHJ 3-channel, S16";
        case AL_FORMAT_UHJ3CHN_FLOAT32_SOFT:
            return "UHJ 3-channel, Float32";
        case AL_FORMAT_UHJ4CHN8_SOFT:
            return "UHJ 4-channel, U8";
        case AL_FORMAT_UHJ4CHN16_SOFT:
            return "UHJ 4-channel, S16";
        case AL_FORMAT_UHJ4CHN_FLOAT32_SOFT:
            return "UHJ 4-channel, Float32";
    }
    return "Unknown Format";
}


/* Open the audio file and check that it's usable. */
void open_audio_file(const char *filename, SNDFILE **sound_file, SF_INFO *sound_file_info_ptr) {
    // dereference the pointer, and store a pointer there
    *sound_file = sf_open(filename, SFM_READ, sound_file_info_ptr);
    bool success = true;
    if (!*sound_file) {
        fprintf(stderr, "Could not open audio in %s: %s\n", filename,
                sf_strerror(*sound_file));
        success = false;
    }
    if (sound_file_info_ptr->frames < 1) {
        fprintf(stderr, "Bad sample count in %s (%" PRId64 ")\n", filename, sound_file_info_ptr->frames);
        sf_close(*sound_file);
        success = false;
    }
    if (not success) {
        throw std::runtime_error("couldn't open audio or bad sample count");
    }
}

/* Detect a suitable format to load. Formats like Vorbis and Opus use float
 * natively, so load as float to avoid clipping when possible. Formats
 * larger than 16-bit can also use float to preserve a bit more precision.
 */
enum FormatType determine_format_type(SF_INFO sound_file_info) {
    enum FormatType sample_format = Int16;
    switch ((sound_file_info.format & SF_FORMAT_SUBMASK)) {
        case SF_FORMAT_PCM_24:
        case SF_FORMAT_PCM_32:
        case SF_FORMAT_FLOAT:
        case SF_FORMAT_DOUBLE:
        case SF_FORMAT_VORBIS:
        case SF_FORMAT_OPUS:
        case SF_FORMAT_ALAC_20:
        case SF_FORMAT_ALAC_24:
        case SF_FORMAT_ALAC_32:
        case 0x0080 /*SF_FORMAT_MPEG_LAYER_I*/:
        case 0x0081 /*SF_FORMAT_MPEG_LAYER_II*/:
        case 0x0082 /*SF_FORMAT_MPEG_LAYER_III*/:
            if (alIsExtensionPresent("AL_EXT_FLOAT32"))
                sample_format = Float;
            break;
        case SF_FORMAT_IMA_ADPCM:
            /* ADPCM formats require setting a block alignment as specified in the
             * file, which needs to be read from the wave 'fmt ' chunk manually
             * since libsndfile doesn't provide it in a format-agnostic way.
             */
            if (sound_file_info.channels <= 2 &&
                (sound_file_info.format & SF_FORMAT_TYPEMASK) == SF_FORMAT_WAV &&
                alIsExtensionPresent("AL_EXT_IMA4") &&
                alIsExtensionPresent("AL_SOFT_block_alignment"))
                sample_format = IMA4;
            break;
        case SF_FORMAT_MS_ADPCM:
            if (sound_file_info.channels <= 2 &&
                (sound_file_info.format & SF_FORMAT_TYPEMASK) == SF_FORMAT_WAV &&
                alIsExtensionPresent("AL_SOFT_MSADPCM") &&
                alIsExtensionPresent("AL_SOFT_block_alignment"))
                sample_format = MSADPCM;
            break;
    }
    return sample_format;
}

std::tuple<ALint, ALint>
get_byte_and_samples_per_block_alignment(enum FormatType sample_format, const char *filename, SNDFILE *sound_file,
                                         SF_INFO sound_file_info) {
    ALint byteblockalign = 0;
    ALint splblockalign = 0;
    if (sample_format == IMA4 || sample_format == MSADPCM) {
        /* For ADPCM, lookup the wave file's "fmt " chunk, which is a
         * WAVEFORMATEX-based structure for the audio format.
         */
        SF_CHUNK_INFO inf = {"fmt ", 4, 0, NULL};
        SF_CHUNK_ITERATOR *iter = sf_get_chunk_iterator(sound_file, &inf);

        /* If there's an issue getting the chunk or block alignment, load as
         * 16-bit and have libsndfile do the conversion.
         */
        if (!iter || sf_get_chunk_size(iter, &inf) != SF_ERR_NO_ERROR ||
            inf.datalen < 14)
            sample_format = Int16;
        else {
            ALubyte *fmtbuf = (ALubyte *) calloc(inf.datalen, 1);
            inf.data = fmtbuf;
            if (sf_get_chunk_data(iter, &inf) != SF_ERR_NO_ERROR)
                sample_format = Int16;
            else {
                /* Read the nBlockAlign field, and convert from bytes- to
                 * samples-per-block (verifying it's valid by converting back
                 * and comparing to the original value).
                 */
                byteblockalign = fmtbuf[12] | (fmtbuf[13] << 8);
                if (sample_format == IMA4) {
                    splblockalign = (byteblockalign / sound_file_info.channels - 4) / 4 * 8 + 1;
                    if (splblockalign < 1 || ((splblockalign - 1) / 2 + 4) * sound_file_info.channels != byteblockalign)
                        sample_format = Int16;
                } else {
                    splblockalign = (byteblockalign / sound_file_info.channels - 7) * 2 + 2;
                    if (splblockalign < 2 || ((splblockalign - 2) / 2 + 7) * sound_file_info.channels != byteblockalign)
                        sample_format = Int16;
                }
            }
            free(fmtbuf);
        }
    }

    if (sample_format == Int16) {
        splblockalign = 1;
        byteblockalign = sound_file_info.channels * 2;
    } else if (sample_format == Float) {
        splblockalign = 1;
        byteblockalign = sound_file_info.channels * 4;
    }

    if (sound_file_info.frames / splblockalign > (sf_count_t) (INT_MAX / byteblockalign)) {
        fprintf(stderr, "Too many samples in %s (%" PRId64 ")\n", filename,
                sound_file_info.frames);
        sf_close(sound_file);
        throw std::runtime_error("too many samples");
    }

    return {byteblockalign, splblockalign};

}


/* Figure out the OpenAL format from the file and desired sample type. */
ALenum determine_openal_format(SNDFILE *sound_file, SF_INFO sound_file_info, enum FormatType sample_format) {
    //    TODO turn into map
    ALenum format = AL_NONE;
    if (sound_file_info.channels == 1) {
        if (sample_format == Int16)
            format = AL_FORMAT_MONO16;
        else if (sample_format == Float)
            format = AL_FORMAT_MONO_FLOAT32;
        else if (sample_format == IMA4)
            format = AL_FORMAT_MONO_IMA4;
        else if (sample_format == MSADPCM)
            format = AL_FORMAT_MONO_MSADPCM_SOFT;
    } else if (sound_file_info.channels == 2) {
        if (sample_format == Int16)
            format = AL_FORMAT_STEREO16;
        else if (sample_format == Float)
            format = AL_FORMAT_STEREO_FLOAT32;
        else if (sample_format == IMA4)
            format = AL_FORMAT_STEREO_IMA4;
        else if (sample_format == MSADPCM)
            format = AL_FORMAT_STEREO_MSADPCM_SOFT;
    } else if (sound_file_info.channels == 3) {
        if (sf_command(sound_file, SFC_WAVEX_GET_AMBISONIC, NULL, 0) ==
            SF_AMBISONIC_B_FORMAT) {
            if (sample_format == Int16)
                format = AL_FORMAT_BFORMAT2D_16;
            else if (sample_format == Float)
                format = AL_FORMAT_BFORMAT2D_FLOAT32;
        }
    } else if (sound_file_info.channels == 4) {
        if (sf_command(sound_file, SFC_WAVEX_GET_AMBISONIC, NULL, 0) ==
            SF_AMBISONIC_B_FORMAT) {
            if (sample_format == Int16)
                format = AL_FORMAT_BFORMAT3D_16;
            else if (sample_format == Float)
                format = AL_FORMAT_BFORMAT3D_FLOAT32;
        }
    }
    if (!format) {
        sf_close(sound_file); // we might not want to do this in general
        throw std::runtime_error("Unsupported channel count: " + std::to_string(sound_file_info.channels));
    }
    return format;
}

/**
 * Decode the whole audio file to a buffer
 * @return the pointer to dynamic memory, along with the number of bytes it takes up
 */
std::tuple<void *, ALsizei>
decode_audio_file_into_dynamic_memory(const char *filename, SNDFILE *sound_file, SF_INFO sound_file_info,
                                      enum FormatType sample_format, ALenum format, ALint byteblockalign,
                                      ALint splblockalign) {
    /* Decode the whole audio file to a buffer. */
    sf_count_t num_frames;
    ALsizei num_bytes;
    void *membuf = malloc((size_t) (sound_file_info.frames / splblockalign * byteblockalign));
    if (sample_format == Int16)
        num_frames = sf_readf_short(sound_file, (short *) membuf, sound_file_info.frames);
    else if (sample_format == Float)
        num_frames = sf_readf_float(sound_file, (float *) membuf, sound_file_info.frames);
    else {
        sf_count_t count = sound_file_info.frames / splblockalign * byteblockalign;
        num_frames = sf_read_raw(sound_file, membuf, count);
        if (num_frames > 0)
            num_frames = num_frames / byteblockalign * splblockalign;
    }
    if (num_frames < 1) {
        free(membuf);
        sf_close(sound_file);
        fprintf(stderr, "Failed to read samples in %s (%" PRId64 ")\n", filename,
                num_frames);
        throw std::runtime_error("failed to read samples");
    }

    num_bytes = (ALsizei) (num_frames / splblockalign * byteblockalign);

    if (openal_format_enum_to_string.find(format) == openal_format_enum_to_string.end()) {
        printf("Loading: %s (%s, %dhz)\n", filename, openal_format_enum_to_string[format], sound_file_info.samplerate);;
    }

    fflush(stdout);

    return {membuf, num_bytes};
}


/**
 *
 * Buffer the audio data into a new buffer object, then free the data and
 * close the file.
 *
 * @return the identifier to the openal buffer
 */
ALuint load_audio_file_in_dynamic_memory_into_buffer(void *membuf, SNDFILE *sound_file, SF_INFO sound_file_info,
                                                     ALsizei num_bytes, ALenum format, ALint splblockalign) {
    ALenum err;
    ALuint buffer;
    buffer = 0;
    alGenBuffers(1, &buffer);
    if (splblockalign > 1)
        alBufferi(buffer, AL_UNPACK_BLOCK_ALIGNMENT_SOFT, splblockalign);
    alBufferData(buffer, format, membuf, num_bytes, sound_file_info.samplerate);

    free(membuf);
    sf_close(sound_file);

    /* Check if an error occurred, and clean up if so. */
    err = alGetError();
    if (err != AL_NO_ERROR) {
        fprintf(stderr, "OpenAL Error: %s\n", alGetString(err));
        if (buffer && alIsBuffer(buffer))
            alDeleteBuffers(1, &buffer);
        throw std::runtime_error("openal error");
    }

    return buffer;
}

/*
 * LoadBuffer loads the named audio file into an OpenAL buffer object, and
 * returns the new buffer ID.
 */
ALuint load_sound_and_generate_openal_buffer(const char *filename) {
    SNDFILE *sound_file;
    SF_INFO sound_file_info;
    ALenum format;

    open_audio_file(filename, &sound_file, &sound_file_info);
    enum FormatType sample_format = determine_format_type(sound_file_info);
    auto [byteblockalign, splblockalign] = get_byte_and_samples_per_block_alignment(sample_format, filename, sound_file, sound_file_info);
    format = determine_openal_format(sound_file, sound_file_info, sample_format);
    auto [membuf, num_bytes] = decode_audio_file_into_dynamic_memory(filename, sound_file, sound_file_info, sample_format, format, byteblockalign, splblockalign);

    ALuint buffer = load_audio_file_in_dynamic_memory_into_buffer(membuf, sound_file, sound_file_info, num_bytes, format, splblockalign);

    return buffer;

}
