/*
 * S-boxes and MDS-matrices for the reference implementation of the Kalyna
 * block cipher (DSTU 7624:2014)
 *
 * Authors: Ruslan Kiianchuk, Ruslan Mordvinov, Roman Oliynykov
 *
 */

#include "kalyna.h"

uint8_t mds_matrix[8][8] = {
    {0x01, 0x01, 0x05, 0x01, 0x08, 0x06, 0x07, 0x04},
    {0x04, 0x01, 0x01, 0x05, 0x01, 0x08, 0x06, 0x07},
    {0x07, 0x04, 0x01, 0x01, 0x05, 0x01, 0x08, 0x06},
    {0x06, 0x07, 0x04, 0x01, 0x01, 0x05, 0x01, 0x08},
    {0x08, 0x06, 0x07, 0x04, 0x01, 0x01, 0x05, 0x01},
    {0x01, 0x08, 0x06, 0x07, 0x04, 0x01, 0x01, 0x05},
    {0x05, 0x01, 0x08, 0x06, 0x07, 0x04, 0x01, 0x01},
    {0x01, 0x05, 0x01, 0x08, 0x06, 0x07, 0x04, 0x01}
};

uint8_t mds_inv_matrix[8][8] = {
    {0xAD, 0x95, 0x76, 0xA8, 0x2F, 0x49, 0xD7, 0xCA},
    {0xCA, 0xAD, 0x95, 0x76, 0xA8, 0x2F, 0x49, 0xD7},
    {0xD7, 0xCA, 0xAD, 0x95, 0x76, 0xA8, 0x2F, 0x49},
    {0x49, 0xD7, 0xCA, 0xAD, 0x95, 0x76, 0xA8, 0x2F},
    {0x2F, 0x49, 0xD7, 0xCA, 0xAD, 0x95, 0x76, 0xA8},
    {0xA8, 0x2F, 0x49, 0xD7, 0xCA, 0xAD, 0x95, 0x76},
    {0x76, 0xA8, 0x2F, 0x49, 0xD7, 0xCA, 0xAD, 0x95},
    {0x95, 0x76, 0xA8, 0x2F, 0x49, 0xD7, 0xCA, 0xAD}
};

uint8_t sboxes_enc[4][256] = {
    {
        0xa8, 0x43, 0x5f, 0x06, 0x6b, 0x75, 0x6c, 0x59, 0x71, 0xdf, 0x87, 0x95, 0x17, 0xf0, 0xd8, 0x09,
        0x6d, 0xf3, 0x1d, 0xcb, 0xc9, 0x4d, 0x2c, 0xaf, 0x79, 0xe0, 0x97, 0xfd, 0x6f, 0x4b, 0x45, 0x39,
        0x3e, 0xdd, 0xa3, 0x4f, 0xb4, 0xb6, 0x9a, 0x0e, 0x1f, 0xbf, 0x15, 0xe1, 0x49, 0xd2, 0x93, 0xc6,
        0x92, 0x72, 0x9e, 0x61, 0xd1, 0x63, 0xfa, 0xee, 0xf4, 0x19, 0xd5, 0xad, 0x58, 0xa4, 0xbb, 0xa1,
        0xdc, 0xf2, 0x83, 0x37, 0x42, 0xe4, 0x7a, 0x32, 0x9c, 0xcc, 0xab, 0x4a, 0x8f, 0x6e, 0x04, 0x27,
        0x2e, 0xe7, 0xe2, 0x5a, 0x96, 0x16, 0x23, 0x2b, 0xc2, 0x65, 0x66, 0x0f, 0xbc, 0xa9, 0x47, 0x41,
        0x34, 0x48, 0xfc, 0xb7, 0x6a, 0x88, 0xa5, 0x53, 0x86, 0xf9, 0x5b, 0xdb, 0x38, 0x7b, 0xc3, 0x1e,
        0x22, 0x33, 0x24, 0x28, 0x36, 0xc7, 0xb2, 0x3b, 0x8e, 0x77, 0xba, 0xf5, 0x14, 0x9f, 0x08, 0x55,
        0x9b, 0x4c, 0xfe, 0x60, 0x5c, 0xda, 0x18, 0x46, 0xcd, 0x7d, 0x21, 0xb0, 0x3f, 0x1b, 0x89, 0xff,
        0xeb, 0x84, 0x69, 0x3a, 0x9d, 0xd7, 0xd3, 0x70, 0x67, 0x40, 0xb5, 0xde, 0x5d, 0x30, 0x91, 0xb1,
        0x78, 0x11, 0x01, 0xe5, 0x00, 0x68, 0x98, 0xa0, 0xc5, 0x02, 0xa6, 0x74, 0x2d, 0x0b, 0xa2, 0x76,
        0xb3, 0xbe, 0xce, 0xbd, 0xae, 0xe9, 0x8a, 0x31, 0x1c, 0xec, 0xf1, 0x99, 0x94, 0xaa, 0xf6, 0x26,
        0x2f, 0xef, 0xe8, 0x8c, 0x35, 0x03, 0xd4, 0x7f, 0xfb, 0x05, 0xc1, 0x5e, 0x90, 0x20, 0x3d, 0x82,
        0xf7, 0xea, 0x0a, 0x0d, 0x7e, 0xf8, 0x50, 0x1a, 0xc4, 0x07, 0x57, 0xb8, 0x3c, 0x62, 0xe3, 0xc8,
        0xac, 0x52, 0x64, 0x10, 0xd0, 0xd9, 0x13, 0x0c, 0x12, 0x29, 0x51, 0xb9, 0xcf, 0xd6, 0x73, 0x8d,
        0x81, 0x54, 0xc0, 0xed, 0x4e, 0x44, 0xa7, 0x2a, 0x85, 0x25, 0xe6, 0xca, 0x7c, 0x8b, 0x56, 0x80
    },
    {
        0xce, 0xbb, 0xeb, 0x92, 0xea, 0xcb, 0x13, 0xc1, 0xe9, 0x3a, 0xd6, 0xb2, 0xd2, 0x90, 0x17, 0xf8,
        0x42, 0x15, 0x56, 0xb4, 0x65, 0x1c, 0x88, 0x43, 0xc5, 0x5c, 0x36, 0xba, 0xf5, 0x57, 0x67, 0x8d,
        0x31, 0xf6, 0x64, 0x58, 0x9e, 0xf4, 0x22, 0xaa, 0x75, 0x0f, 0x02, 0xb1, 0xdf, 0x6d, 0x73, 0x4d,
        0x7c, 0x26, 0x2e, 0xf7, 0x08, 0x5d, 0x44, 0x3e, 0x9f, 0x14, 0xc8, 0xae, 0x54, 0x10, 0xd8, 0xbc,
        0x1a, 0x6b, 0x69, 0xf3, 0xbd, 0x33, 0xab, 0xfa, 0xd1, 0x9b, 0x68, 0x4e, 0x16, 0x95, 0x91, 0xee,
        0x4c, 0x63, 0x8e, 0x5b, 0xcc, 0x3c, 0x19, 0xa1, 0x81, 0x49, 0x7b, 0xd9, 0x6f, 0x37, 0x60, 0xca,
        0xe7, 0x2b, 0x48, 0xfd, 0x96, 0x45, 0xfc, 0x41, 0x12, 0x0d, 0x79, 0xe5, 0x89, 0x8c, 0xe3, 0x20,
        0x30, 0xdc, 0xb7, 0x6c, 0x4a, 0xb5, 0x3f, 0x97, 0xd4, 0x62, 0x2d, 0x06, 0xa4, 0xa5, 0x83, 0x5f,
        0x2a, 0xda, 0xc9, 0x00, 0x7e, 0xa2, 0x55, 0xbf, 0x11, 0xd5, 0x9c, 0xcf, 0x0e, 0x0a, 0x3d, 0x51,
        0x7d, 0x93, 0x1b, 0xfe, 0xc4, 0x47, 0x09, 0x86, 0x0b, 0x8f, 0x9d, 0x6a, 0x07, 0xb9, 0xb0, 0x98,
        0x18, 0x32, 0x71, 0x4b, 0xef, 0x3b, 0x70, 0xa0, 0xe4, 0x40, 0xff, 0xc3, 0xa9, 0xe6, 0x78, 0xf9,
        0x8b, 0x46, 0x80, 0x1e, 0x38, 0xe1, 0xb8, 0xa8, 0xe0, 0x0c, 0x23, 0x76, 0x1d, 0x25, 0x24, 0x05,
        0xf1, 0x6e, 0x94, 0x28, 0x9a, 0x84, 0xe8, 0xa3, 0x4f, 0x77, 0xd3, 0x85, 0xe2, 0x52, 0xf2, 0x82,
        0x50, 0x7a, 0x2f, 0x74, 0x53, 0xb3, 0x61, 0xaf, 0x39, 0x35, 0xde, 0xcd, 0x1f, 0x99, 0xac, 0xad,
        0x72, 0x2c, 0xdd, 0xd0, 0x87, 0xbe, 0x5e, 0xa6, 0xec, 0x04, 0xc6, 0x03, 0x34, 0xfb, 0xdb, 0x59,
        0xb6, 0xc2, 0x01, 0xf0, 0x5a, 0xed, 0xa7, 0x66, 0x21, 0x7f, 0x8a, 0x27, 0xc7, 0xc0, 0x29, 0xd7
    },
    {
        0x93, 0xd9, 0x9a, 0xb5, 0x98, 0x22, 0x45, 0xfc, 0xba, 0x6a, 0xdf, 0x02, 0x9f, 0xdc, 0x51, 0x59,
        0x4a, 0x17, 0x2b, 0xc2, 0x94, 0xf4, 0xbb, 0xa3, 0x62, 0xe4, 0x71, 0xd4, 0xcd, 0x70, 0x16, 0xe1,
        0x49, 0x3c, 0xc0, 0xd8, 0x5c, 0x9b, 0xad, 0x85, 0x53, 0xa1, 0x7a, 0xc8, 0x2d, 0xe0, 0xd1, 0x72,
        0xa6, 0x2c, 0xc4, 0xe3, 0x76, 0x78, 0xb7, 0xb4, 0x09, 0x3b, 0x0e, 0x41, 0x4c, 0xde, 0xb2, 0x90,
        0x25, 0xa5, 0xd7, 0x03, 0x11, 0x00, 0xc3, 0x2e, 0x92, 0xef, 0x4e, 0x12, 0x9d, 0x7d, 0xcb, 0x35,
        0x10, 0xd5, 0x4f, 0x9e, 0x4d, 0xa9, 0x55, 0xc6, 0xd0, 0x7b, 0x18, 0x97, 0xd3, 0x36, 0xe6, 0x48,
        0x56, 0x81, 0x8f, 0x77, 0xcc, 0x9c, 0xb9, 0xe2, 0xac, 0xb8, 0x2f, 0x15, 0xa4, 0x7c, 0xda, 0x38,
        0x1e, 0x0b, 0x05, 0xd6, 0x14, 0x6e, 0x6c, 0x7e, 0x66, 0xfd, 0xb1, 0xe5, 0x60, 0xaf, 0x5e, 0x33,
        0x87, 0xc9, 0xf0, 0x5d, 0x6d, 0x3f, 0x88, 0x8d, 0xc7, 0xf7, 0x1d, 0xe9, 0xec, 0xed, 0x80, 0x29,
        0x27, 0xcf, 0x99, 0xa8, 0x50, 0x0f, 0x37, 0x24, 0x28, 0x30, 0x95, 0xd2, 0x3e, 0x5b, 0x40, 0x83,
        0xb3, 0x69, 0x57, 0x1f, 0x07, 0x1c, 0x8a, 0xbc, 0x20, 0xeb, 0xce, 0x8e, 0xab, 0xee, 0x31, 0xa2,
        0x73, 0xf9, 0xca, 0x3a, 0x1a, 0xfb, 0x0d, 0xc1, 0xfe, 0xfa, 0xf2, 0x6f, 0xbd, 0x96, 0xdd, 0x43,
        0x52, 0xb6, 0x08, 0xf3, 0xae, 0xbe, 0x19, 0x89, 0x32, 0x26, 0xb0, 0xea, 0x4b, 0x64, 0x84, 0x82,
        0x6b, 0xf5, 0x79, 0xbf, 0x01, 0x5f, 0x75, 0x63, 0x1b, 0x23, 0x3d, 0x68, 0x2a, 0x65, 0xe8, 0x91,
        0xf6, 0xff, 0x13, 0x58, 0xf1, 0x47, 0x0a, 0x7f, 0xc5, 0xa7, 0xe7, 0x61, 0x5a, 0x06, 0x46, 0x44,
        0x42, 0x04, 0xa0, 0xdb, 0x39, 0x86, 0x54, 0xaa, 0x8c, 0x34, 0x21, 0x8b, 0xf8, 0x0c, 0x74, 0x67
    },
    {
        0x68, 0x8d, 0xca, 0x4d, 0x73, 0x4b, 0x4e, 0x2a, 0xd4, 0x52, 0x26, 0xb3, 0x54, 0x1e, 0x19, 0x1f,
        0x22, 0x03, 0x46, 0x3d, 0x2d, 0x4a, 0x53, 0x83, 0x13, 0x8a, 0xb7, 0xd5, 0x25, 0x79, 0xf5, 0xbd,
        0x58, 0x2f, 0x0d, 0x02, 0xed, 0x51, 0x9e, 0x11, 0xf2, 0x3e, 0x55, 0x5e, 0xd1, 0x16, 0x3c, 0x66,
        0x70, 0x5d, 0xf3, 0x45, 0x40, 0xcc, 0xe8, 0x94, 0x56, 0x08, 0xce, 0x1a, 0x3a, 0xd2, 0xe1, 0xdf,
        0xb5, 0x38, 0x6e, 0x0e, 0xe5, 0xf4, 0xf9, 0x86, 0xe9, 0x4f, 0xd6, 0x85, 0x23, 0xcf, 0x32, 0x99,
        0x31, 0x14, 0xae, 0xee, 0xc8, 0x48, 0xd3, 0x30, 0xa1, 0x92, 0x41, 0xb1, 0x18, 0xc4, 0x2c, 0x71,
        0x72, 0x44, 0x15, 0xfd, 0x37, 0xbe, 0x5f, 0xaa, 0x9b, 0x88, 0xd8, 0xab, 0x89, 0x9c, 0xfa, 0x60,
        0xea, 0xbc, 0x62, 0x0c, 0x24, 0xa6, 0xa8, 0xec, 0x67, 0x20, 0xdb, 0x7c, 0x28, 0xdd, 0xac, 0x5b,
        0x34, 0x7e, 0x10, 0xf1, 0x7b, 0x8f, 0x63, 0xa0, 0x05, 0x9a, 0x43, 0x77, 0x21, 0xbf, 0x27, 0x09,
        0xc3, 0x9f, 0xb6, 0xd7, 0x29, 0xc2, 0xeb, 0xc0, 0xa4, 0x8b, 0x8c, 0x1d, 0xfb, 0xff, 0xc1, 0xb2,
        0x97, 0x2e, 0xf8, 0x65, 0xf6, 0x75, 0x07, 0x04, 0x49, 0x33, 0xe4, 0xd9, 0xb9, 0xd0, 0x42, 0xc7,
        0x6c, 0x90, 0x00, 0x8e, 0x6f, 0x50, 0x01, 0xc5, 0xda, 0x47, 0x3f, 0xcd, 0x69, 0xa2, 0xe2, 0x7a,
        0xa7, 0xc6, 0x93, 0x0f, 0x0a, 0x06, 0xe6, 0x2b, 0x96, 0xa3, 0x1c, 0xaf, 0x6a, 0x12, 0x84, 0x39,
        0xe7, 0xb0, 0x82, 0xf7, 0xfe, 0x9d, 0x87, 0x5c, 0x81, 0x35, 0xde, 0xb4, 0xa5, 0xfc, 0x80, 0xef,
        0xcb, 0xbb, 0x6b, 0x76, 0xba, 0x5a, 0x7d, 0x78, 0x0b, 0x95, 0xe3, 0xad, 0x74, 0x98, 0x3b, 0x36,
        0x64, 0x6d, 0xdc, 0xf0, 0x59, 0xa9, 0x4c, 0x17, 0x7f, 0x91, 0xb8, 0xc9, 0x57, 0x1b, 0xe0, 0x61
    }
};


uint8_t sboxes_dec[4][256] = {
    {
        0xa4, 0xa2, 0xa9, 0xc5, 0x4e, 0xc9, 0x03, 0xd9, 0x7e, 0x0f, 0xd2, 0xad, 0xe7, 0xd3, 0x27, 0x5b,
        0xe3, 0xa1, 0xe8, 0xe6, 0x7c, 0x2a, 0x55, 0x0c, 0x86, 0x39, 0xd7, 0x8d, 0xb8, 0x12, 0x6f, 0x28,
        0xcd, 0x8a, 0x70, 0x56, 0x72, 0xf9, 0xbf, 0x4f, 0x73, 0xe9, 0xf7, 0x57, 0x16, 0xac, 0x50, 0xc0,
        0x9d, 0xb7, 0x47, 0x71, 0x60, 0xc4, 0x74, 0x43, 0x6c, 0x1f, 0x93, 0x77, 0xdc, 0xce, 0x20, 0x8c,
        0x99, 0x5f, 0x44, 0x01, 0xf5, 0x1e, 0x87, 0x5e, 0x61, 0x2c, 0x4b, 0x1d, 0x81, 0x15, 0xf4, 0x23,
        0xd6, 0xea, 0xe1, 0x67, 0xf1, 0x7f, 0xfe, 0xda, 0x3c, 0x07, 0x53, 0x6a, 0x84, 0x9c, 0xcb, 0x02,
        0x83, 0x33, 0xdd, 0x35, 0xe2, 0x59, 0x5a, 0x98, 0xa5, 0x92, 0x64, 0x04, 0x06, 0x10, 0x4d, 0x1c,
        0x97, 0x08, 0x31, 0xee, 0xab, 0x05, 0xaf, 0x79, 0xa0, 0x18, 0x46, 0x6d, 0xfc, 0x89, 0xd4, 0xc7,
        0xff, 0xf0, 0xcf, 0x42, 0x91, 0xf8, 0x68, 0x0a, 0x65, 0x8e, 0xb6, 0xfd, 0xc3, 0xef, 0x78, 0x4c,
        0xcc, 0x9e, 0x30, 0x2e, 0xbc, 0x0b, 0x54, 0x1a, 0xa6, 0xbb, 0x26, 0x80, 0x48, 0x94, 0x32, 0x7d,
        0xa7, 0x3f, 0xae, 0x22, 0x3d, 0x66, 0xaa, 0xf6, 0x00, 0x5d, 0xbd, 0x4a, 0xe0, 0x3b, 0xb4, 0x17,
        0x8b, 0x9f, 0x76, 0xb0, 0x24, 0x9a, 0x25, 0x63, 0xdb, 0xeb, 0x7a, 0x3e, 0x5c, 0xb3, 0xb1, 0x29,
        0xf2, 0xca, 0x58, 0x6e, 0xd8, 0xa8, 0x2f, 0x75, 0xdf, 0x14, 0xfb, 0x13, 0x49, 0x88, 0xb2, 0xec,
        0xe4, 0x34, 0x2d, 0x96, 0xc6, 0x3a, 0xed, 0x95, 0x0e, 0xe5, 0x85, 0x6b, 0x40, 0x21, 0x9b, 0x09,
        0x19, 0x2b, 0x52, 0xde, 0x45, 0xa3, 0xfa, 0x51, 0xc2, 0xb5, 0xd1, 0x90, 0xb9, 0xf3, 0x37, 0xc1,
        0x0d, 0xba, 0x41, 0x11, 0x38, 0x7b, 0xbe, 0xd0, 0xd5, 0x69, 0x36, 0xc8, 0x62, 0x1b, 0x82, 0x8f
    },
    {
        0x83, 0xf2, 0x2a, 0xeb, 0xe9, 0xbf, 0x7b, 0x9c, 0x34, 0x96, 0x8d, 0x98, 0xb9, 0x69, 0x8c, 0x29,
        0x3d, 0x88, 0x68, 0x06, 0x39, 0x11, 0x4c, 0x0e, 0xa0, 0x56, 0x40, 0x92, 0x15, 0xbc, 0xb3, 0xdc,
        0x6f, 0xf8, 0x26, 0xba, 0xbe, 0xbd, 0x31, 0xfb, 0xc3, 0xfe, 0x80, 0x61, 0xe1, 0x7a, 0x32, 0xd2,
        0x70, 0x20, 0xa1, 0x45, 0xec, 0xd9, 0x1a, 0x5d, 0xb4, 0xd8, 0x09, 0xa5, 0x55, 0x8e, 0x37, 0x76,
        0xa9, 0x67, 0x10, 0x17, 0x36, 0x65, 0xb1, 0x95, 0x62, 0x59, 0x74, 0xa3, 0x50, 0x2f, 0x4b, 0xc8,
        0xd0, 0x8f, 0xcd, 0xd4, 0x3c, 0x86, 0x12, 0x1d, 0x23, 0xef, 0xf4, 0x53, 0x19, 0x35, 0xe6, 0x7f,
        0x5e, 0xd6, 0x79, 0x51, 0x22, 0x14, 0xf7, 0x1e, 0x4a, 0x42, 0x9b, 0x41, 0x73, 0x2d, 0xc1, 0x5c,
        0xa6, 0xa2, 0xe0, 0x2e, 0xd3, 0x28, 0xbb, 0xc9, 0xae, 0x6a, 0xd1, 0x5a, 0x30, 0x90, 0x84, 0xf9,
        0xb2, 0x58, 0xcf, 0x7e, 0xc5, 0xcb, 0x97, 0xe4, 0x16, 0x6c, 0xfa, 0xb0, 0x6d, 0x1f, 0x52, 0x99,
        0x0d, 0x4e, 0x03, 0x91, 0xc2, 0x4d, 0x64, 0x77, 0x9f, 0xdd, 0xc4, 0x49, 0x8a, 0x9a, 0x24, 0x38,
        0xa7, 0x57, 0x85, 0xc7, 0x7c, 0x7d, 0xe7, 0xf6, 0xb7, 0xac, 0x27, 0x46, 0xde, 0xdf, 0x3b, 0xd7,
        0x9e, 0x2b, 0x0b, 0xd5, 0x13, 0x75, 0xf0, 0x72, 0xb6, 0x9d, 0x1b, 0x01, 0x3f, 0x44, 0xe5, 0x87,
        0xfd, 0x07, 0xf1, 0xab, 0x94, 0x18, 0xea, 0xfc, 0x3a, 0x82, 0x5f, 0x05, 0x54, 0xdb, 0x00, 0x8b,
        0xe3, 0x48, 0x0c, 0xca, 0x78, 0x89, 0x0a, 0xff, 0x3e, 0x5b, 0x81, 0xee, 0x71, 0xe2, 0xda, 0x2c,
        0xb8, 0xb5, 0xcc, 0x6e, 0xa8, 0x6b, 0xad, 0x60, 0xc6, 0x08, 0x04, 0x02, 0xe8, 0xf5, 0x4f, 0xa4,
        0xf3, 0xc0, 0xce, 0x43, 0x25, 0x1c, 0x21, 0x33, 0x0f, 0xaf, 0x47, 0xed, 0x66, 0x63, 0x93, 0xaa
    },
    {
        0x45, 0xd4, 0x0b, 0x43, 0xf1, 0x72, 0xed, 0xa4, 0xc2, 0x38, 0xe6, 0x71, 0xfd, 0xb6, 0x3a, 0x95,
        0x50, 0x44, 0x4b, 0xe2, 0x74, 0x6b, 0x1e, 0x11, 0x5a, 0xc6, 0xb4, 0xd8, 0xa5, 0x8a, 0x70, 0xa3,
        0xa8, 0xfa, 0x05, 0xd9, 0x97, 0x40, 0xc9, 0x90, 0x98, 0x8f, 0xdc, 0x12, 0x31, 0x2c, 0x47, 0x6a,
        0x99, 0xae, 0xc8, 0x7f, 0xf9, 0x4f, 0x5d, 0x96, 0x6f, 0xf4, 0xb3, 0x39, 0x21, 0xda, 0x9c, 0x85,
        0x9e, 0x3b, 0xf0, 0xbf, 0xef, 0x06, 0xee, 0xe5, 0x5f, 0x20, 0x10, 0xcc, 0x3c, 0x54, 0x4a, 0x52,
        0x94, 0x0e, 0xc0, 0x28, 0xf6, 0x56, 0x60, 0xa2, 0xe3, 0x0f, 0xec, 0x9d, 0x24, 0x83, 0x7e, 0xd5,
        0x7c, 0xeb, 0x18, 0xd7, 0xcd, 0xdd, 0x78, 0xff, 0xdb, 0xa1, 0x09, 0xd0, 0x76, 0x84, 0x75, 0xbb,
        0x1d, 0x1a, 0x2f, 0xb0, 0xfe, 0xd6, 0x34, 0x63, 0x35, 0xd2, 0x2a, 0x59, 0x6d, 0x4d, 0x77, 0xe7,
        0x8e, 0x61, 0xcf, 0x9f, 0xce, 0x27, 0xf5, 0x80, 0x86, 0xc7, 0xa6, 0xfb, 0xf8, 0x87, 0xab, 0x62,
        0x3f, 0xdf, 0x48, 0x00, 0x14, 0x9a, 0xbd, 0x5b, 0x04, 0x92, 0x02, 0x25, 0x65, 0x4c, 0x53, 0x0c,
        0xf2, 0x29, 0xaf, 0x17, 0x6c, 0x41, 0x30, 0xe9, 0x93, 0x55, 0xf7, 0xac, 0x68, 0x26, 0xc4, 0x7d,
        0xca, 0x7a, 0x3e, 0xa0, 0x37, 0x03, 0xc1, 0x36, 0x69, 0x66, 0x08, 0x16, 0xa7, 0xbc, 0xc5, 0xd3,
        0x22, 0xb7, 0x13, 0x46, 0x32, 0xe8, 0x57, 0x88, 0x2b, 0x81, 0xb2, 0x4e, 0x64, 0x1c, 0xaa, 0x91,
        0x58, 0x2e, 0x9b, 0x5c, 0x1b, 0x51, 0x73, 0x42, 0x23, 0x01, 0x6e, 0xf3, 0x0d, 0xbe, 0x3d, 0x0a,
        0x2d, 0x1f, 0x67, 0x33, 0x19, 0x7b, 0x5e, 0xea, 0xde, 0x8b, 0xcb, 0xa9, 0x8c, 0x8d, 0xad, 0x49,
        0x82, 0xe4, 0xba, 0xc3, 0x15, 0xd1, 0xe0, 0x89, 0xfc, 0xb1, 0xb9, 0xb5, 0x07, 0x79, 0xb8, 0xe1
    },
    {
        0xb2, 0xb6, 0x23, 0x11, 0xa7, 0x88, 0xc5, 0xa6, 0x39, 0x8f, 0xc4, 0xe8, 0x73, 0x22, 0x43, 0xc3,
        0x82, 0x27, 0xcd, 0x18, 0x51, 0x62, 0x2d, 0xf7, 0x5c, 0x0e, 0x3b, 0xfd, 0xca, 0x9b, 0x0d, 0x0f,
        0x79, 0x8c, 0x10, 0x4c, 0x74, 0x1c, 0x0a, 0x8e, 0x7c, 0x94, 0x07, 0xc7, 0x5e, 0x14, 0xa1, 0x21,
        0x57, 0x50, 0x4e, 0xa9, 0x80, 0xd9, 0xef, 0x64, 0x41, 0xcf, 0x3c, 0xee, 0x2e, 0x13, 0x29, 0xba,
        0x34, 0x5a, 0xae, 0x8a, 0x61, 0x33, 0x12, 0xb9, 0x55, 0xa8, 0x15, 0x05, 0xf6, 0x03, 0x06, 0x49,
        0xb5, 0x25, 0x09, 0x16, 0x0c, 0x2a, 0x38, 0xfc, 0x20, 0xf4, 0xe5, 0x7f, 0xd7, 0x31, 0x2b, 0x66,
        0x6f, 0xff, 0x72, 0x86, 0xf0, 0xa3, 0x2f, 0x78, 0x00, 0xbc, 0xcc, 0xe2, 0xb0, 0xf1, 0x42, 0xb4,
        0x30, 0x5f, 0x60, 0x04, 0xec, 0xa5, 0xe3, 0x8b, 0xe7, 0x1d, 0xbf, 0x84, 0x7b, 0xe6, 0x81, 0xf8,
        0xde, 0xd8, 0xd2, 0x17, 0xce, 0x4b, 0x47, 0xd6, 0x69, 0x6c, 0x19, 0x99, 0x9a, 0x01, 0xb3, 0x85,
        0xb1, 0xf9, 0x59, 0xc2, 0x37, 0xe9, 0xc8, 0xa0, 0xed, 0x4f, 0x89, 0x68, 0x6d, 0xd5, 0x26, 0x91,
        0x87, 0x58, 0xbd, 0xc9, 0x98, 0xdc, 0x75, 0xc0, 0x76, 0xf5, 0x67, 0x6b, 0x7e, 0xeb, 0x52, 0xcb,
        0xd1, 0x5b, 0x9f, 0x0b, 0xdb, 0x40, 0x92, 0x1a, 0xfa, 0xac, 0xe4, 0xe1, 0x71, 0x1f, 0x65, 0x8d,
        0x97, 0x9e, 0x95, 0x90, 0x5d, 0xb7, 0xc1, 0xaf, 0x54, 0xfb, 0x02, 0xe0, 0x35, 0xbb, 0x3a, 0x4d,
        0xad, 0x2c, 0x3d, 0x56, 0x08, 0x1b, 0x4a, 0x93, 0x6a, 0xab, 0xb8, 0x7a, 0xf2, 0x7d, 0xda, 0x3f,
        0xfe, 0x3e, 0xbe, 0xea, 0xaa, 0x44, 0xc6, 0xd0, 0x36, 0x48, 0x70, 0x96, 0x77, 0x24, 0x53, 0xdf,
        0xf3, 0x83, 0x28, 0x32, 0x45, 0x1e, 0xa4, 0xd3, 0xa2, 0x46, 0x6e, 0x9c, 0xdd, 0x63, 0xd4, 0x9d
    }
};
