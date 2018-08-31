// Copyright (c) 2015 Jonas Schnelli
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

/*int is_connection_open(void);
int close_onnection(void);
int bitbox_hid_init(const char *path);
int send_command(const char* json, char* resultOut);*/

#include <stddef.h>

int open_bitbox(const char *path);
char* send_to_bitbox(const char* data, size_t data_len);