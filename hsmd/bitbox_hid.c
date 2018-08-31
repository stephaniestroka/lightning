#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bitbox_hid.h"
#include "hidapi.h"

#define FRAME_SIZE 64

// contains length of data (unsigned short)
#define FIRST_FRAME_HEADER_LEN 7
#define FRAME_HEADER_LEN 5

#define HWW_CID 0xFF000000
#define HWW_CMD 0x80 + 0x40 + 0x01

#define TIMEOUT_MS 1000

#ifndef MIN
#define MIN(a, b)  (((a) < (b)) ? (a) : (b))
#endif

hid_device* bitbox = NULL;

int open_bitbox(const char *path) {
    bitbox = hid_open_path(path);
    if (!bitbox) {
        return 0;
    }
    return 1;
}

static void printf_hex(const unsigned char* buf, size_t len) {
    int i;
    for (i = 0; i < len; i++)
    {
        if (i > 0)
            printf(":");
        printf("%02X", buf[i]);
    }
    printf("\n");
}

/**
 * Reads data send by the BitBox. The returned data must be freed by the caller.
 */
static char* read_frames(void) {
    unsigned char frame[FRAME_SIZE];
    hid_read_timeout(bitbox, frame, FRAME_SIZE, TIMEOUT_MS);

    int cid = 0;
    for (int i = 0; i < 4; i++) {
        cid = (cid << 8) + frame[i];
    }
    if (cid != HWW_CID) {
        // TODO: fail properly!
        printf("Received unexpected frame (command id unknown)");
        return NULL;
    }
    unsigned char cmd = frame[4];
    if (cmd != HWW_CMD) {
        // TODO: fail properly!
        printf("Received unexpected frame (command unknown)");
        return NULL;
    }
    size_t data_len = (frame[5] * 256) + frame[6];
    size_t read = 0;
    char* data = malloc(data_len);
    for (int i = 0; i < data_len; i += read) {
        size_t frame_header_len = FRAME_HEADER_LEN;
        if (i == 0) {
            frame_header_len = FIRST_FRAME_HEADER_LEN;
        }
        size_t frame_data_len = MIN(data_len - read, FRAME_SIZE - frame_header_len);
        memcpy(data, frame + frame_header_len, frame_data_len);
        read += frame_data_len;
    }
    return data;
}

/**
 * Splits the given data into frame chunks and sends it to the BitBox.
 * Waits for the reply.
 * The returned data must be freed by the caller.
 */
char* send_to_bitbox(const char* data, size_t data_len) {
    uint8_t seq = 0;
    int written = 0;
    for (int i = 0; i < data_len; i += written) {
        size_t frame_header_len = FRAME_HEADER_LEN;
        if (i == 0) {
            frame_header_len = FIRST_FRAME_HEADER_LEN;
        }
        size_t frame_data_len = MIN(data_len - written, FRAME_SIZE - frame_header_len);
        // char array of either the whole frame, or until the end of data
        unsigned char frame[FRAME_SIZE];
        // frame[0] = 0;
        for (int j = 0; j < 4; j++) {
            frame[j] = (HWW_CID >> (8 * (3 - j))) & 0xFF;
        }
        if (i == 0) {
            frame[4] = HWW_CMD;
            for (int j = 0; j < 2; j++) {
                frame[5] = (data_len >> 8) & 0xFF;
                frame[6] = data_len & 0xFF;
            }
        } else {
            frame[4] = seq;
        }
        // starting at either byte 6 or 8
        memcpy(frame + frame_header_len, data + i, frame_data_len);
        size_t effectivly_used = frame_header_len + frame_data_len;
        memset(frame + effectivly_used, 0xEE, FRAME_SIZE - effectivly_used);
        written += frame_data_len;
        printf("frame: ");
        printf_hex(frame, FRAME_SIZE);
        hid_write(bitbox, 0, 1);
        hid_write(bitbox, frame, FRAME_SIZE);
        seq++;
    }
    return read_frames();
}