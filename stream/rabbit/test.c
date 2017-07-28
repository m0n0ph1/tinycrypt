

// test unit for Rabbit stream cipher
// odzhan

#include <stdio.h>
#include "rabbit.h"

uint8_t tv_key[16]={0};
uint8_t tv_iv[8]={0};

uint8_t tv_s[48]=
{ 0xed, 0xb7, 0x05, 0x67, 0x37, 0x5d, 0xcd, 0x7c,
  0xd8, 0x95, 0x54, 0xf8, 0x5e, 0x27, 0xa7, 0xc6,
  0x8d, 0x4a, 0xdc, 0x70, 0x32, 0x29, 0x8f, 0x7b,
  0xd4, 0xef, 0xf5, 0x04, 0xac, 0xa6, 0x29, 0x5f,
  0x66, 0x8f, 0xbf, 0x47, 0x8a, 0xdb, 0x2b, 0xe5,
  0x1e, 0x6c, 0xde, 0x29, 0x2b, 0x82, 0xde, 0x2a };

uint8_t tv_key2[16]=
{ 0x91, 0x28, 0x13, 0x29, 0x2E, 0xED, 0x36, 0xFE, 
  0x3B, 0xFC, 0x62, 0xF1, 0xDC, 0x51, 0xC3, 0xAC };
  
uint8_t tv_iv2[8]=
{ 0x59, 0x7E, 0x26, 0xC1, 0x75, 0xF5, 0x73, 0xC3 };

uint8_t tv_s2[48]=
{ 0x6d, 0x7d, 0x01, 0x22, 0x92, 0xcc, 0xdc, 0xe0,
  0xe2, 0x12, 0x00, 0x58, 0xb9, 0x4e, 0xcd, 0x1f,
  0x2e, 0x6f, 0x93, 0xed, 0xff, 0x99, 0x24, 0x7b,
  0x01, 0x25, 0x21, 0xd1, 0x10, 0x4e, 0x5f, 0xa7,
  0xa7, 0x9b, 0x02, 0x12, 0xd0, 0xbd, 0x56, 0x23,
  0x39, 0x38, 0xe7, 0x93, 0xc3, 0x12, 0xc1, 0xeb };

uint8_t tv_s3[48]=
{ 0x40, 0xc6, 0x3f, 0x58, 0xa4, 0x18, 0x0f, 0x0b,
  0x2e, 0x62, 0x34, 0x6d, 0x5c, 0x33, 0x49, 0xca,
  0xb2, 0xcd, 0x81, 0x60, 0xf1, 0xa9, 0x0e, 0x65,
  0x3b, 0x1d, 0x74, 0x9a, 0x91, 0x64, 0x02, 0xaa,
  0x92, 0xa0, 0xe8, 0x04, 0x70, 0xc8, 0x61, 0xe5,
  0xb7, 0xd3, 0xae, 0x76, 0x94, 0x02, 0x66, 0xdb };
  
void bin2hex(void *in, int len) {
    int i;
    uint8_t *p=(uint8_t*)in;
    
    for (i=0; i<len; i++) {
      if ((i & 7)==0) putchar('\n');
      printf ("%02x, ", p[i]);
    }
    putchar('\n');
}

int equ(uint8_t x[], uint8_t y[], int len) {
    return memcmp(x, y, len)==0;
}

int main(void)
{
    RABBIT_ctx c;
    uint8_t in[64], out[64];
    
    memset(in, 0, sizeof(in));
    memset(out, 0, sizeof(out));
    
    RABBIT_setkey(&c, tv_key2);
    RABBIT_setiv (&c, tv_iv2);
    RABBIT_crypt (&c, in, 48);
    
    printf ("\nRabbit Test: %s\n", 
      equ(tv_s3, in, 48) ? "OK" : "FAILED");
    
    bin2hex(in, 48);
    return 0;
}
