

// RC4Z test unit
// Odzhan

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "rc4.h"

char *test_keys[] = 
{ "00000000000000000000000000000000",
  "0123456789abcdef0112233445566778"};

char *test_plaintexts[] =
{ "00000000000000000000000000000000",
  "02132435465768798a9bacbdcedfe0f1"};

char *test_ciphertexts[] =
{ "de188941a3375d3a8a061e67576e926d",
  "797f2cb11a3f36e7c4b4eb9e2d3f3e00"};

uint8_t sbox2[]=
{ 0x30, 0xec, 0xb6, 0xe3, 0xf3, 0x5a, 0xe5, 0x38,
  0x7f, 0xba, 0x2c, 0x02, 0xa3, 0x1f, 0x44, 0x1b,
  0x7b, 0x5f, 0x33, 0xe0, 0xc7, 0x81, 0x64, 0x8c,
  0x66, 0x4b, 0xeb, 0x97, 0x8f, 0x58, 0x87, 0x98,
  0x72, 0x71, 0xa4, 0xb0, 0xc5, 0x70, 0x14, 0xda,
  0xfc, 0x3b, 0x42, 0xca, 0xb9, 0x49, 0x01, 0xa2,
  0x28, 0x54, 0xdf, 0x65, 0xa8, 0x1d, 0x12, 0xe7,
  0x16, 0x78, 0x0d, 0x69, 0x6c, 0x51, 0x4f, 0x84,
  0x55, 0x3f, 0xd9, 0xf0, 0xed, 0xee, 0x63, 0x89,
  0x19, 0xa5, 0x9a, 0x7d, 0x17, 0x4d, 0x35, 0xc9,
  0x94, 0x6e, 0xef, 0xa1, 0x5b, 0x25, 0x7e, 0xf1,
  0x6b, 0xc3, 0x76, 0x79, 0xcf, 0x10, 0xc6, 0x99,
  0x90, 0xb8, 0x7c, 0x53, 0xdb, 0x06, 0x83, 0x3d,
  0x27, 0x21, 0x92, 0x8b, 0xf8, 0xa9, 0xf5, 0x9d,
  0xce, 0xaa, 0x39, 0x0b, 0x9e, 0x6a, 0x36, 0xc0,
  0x4c, 0x3e, 0x6d, 0xfd, 0x9c, 0xae, 0x60, 0xb5,
  0x47, 0x26, 0x59, 0xcb, 0x8d, 0xa6, 0xc2, 0x2f,
  0xf4, 0x08, 0x91, 0x9f, 0x46, 0xad, 0x45, 0xd4,
  0xe6, 0x93, 0x05, 0x8e, 0xbf, 0xb3, 0xc8, 0x2e,
  0x6f, 0x56, 0xcc, 0x9b, 0xbd, 0x85, 0xf7, 0xd0,
  0x3c, 0x07, 0x86, 0x4a, 0xf9, 0xb2, 0x0c, 0xff,
  0xb7, 0x09, 0x0e, 0xbb, 0xac, 0x52, 0x15, 0x2d,
  0x04, 0x74, 0x80, 0x13, 0xbc, 0xe4, 0x4e, 0x20,
  0x73, 0x5d, 0x5e, 0xe8, 0xd3, 0x11, 0xe9, 0xf2,
  0x3a, 0xd2, 0x5c, 0xab, 0x8a, 0x32, 0xa7, 0x61,
  0xdd, 0x67, 0x37, 0xea, 0x77, 0xf6, 0x41, 0x1a,
  0xd1, 0x1e, 0x68, 0xb4, 0x88, 0x22, 0x03, 0x23,
  0x0a, 0x1c, 0xd7, 0xde, 0x48, 0x43, 0x2b, 0x95,
  0x00, 0x75, 0xa0, 0xd5, 0xd8, 0x29, 0xaf, 0xfb,
  0x2a, 0xe2, 0xfe, 0x40, 0x24, 0x50, 0xb1, 0x82,
  0x18, 0xc4, 0xdc, 0x62, 0x31, 0xcd, 0x57, 0xfa,
  0xbe, 0x34, 0x7a, 0xe1, 0x0f, 0xd6, 0x96, 0xc1};
  
void dump (char hdr[], void* buf, int len)
{
  size_t i;
  uint8_t *p=(uint8_t*)buf;
  
  printf ("\n%s : ", hdr);
  for (i=0; i<len; i++) printf ("%02x", p[i]);
}

int hex2bin (void *bin, char hex[]) {
  int len, i, x;
  uint8_t *p=(uint8_t*)bin;
  
  len = strlen (hex);
  
  if ((len & 1) != 0) {
    return 0; 
  }
  
  for (i=0; i<len; i++) {
    if (isxdigit((int)hex[i]) == 0) {
      return 0; 
    }
  }
  
  for (i=0; i<len / 2; i++) {
    sscanf (&hex[i * 2], "%2x", &x);
    p[i] = (uint8_t)x;
  } 
  return len / 2;
} 

#pragma pack (push, 1)
typedef struct _RC4Z_CTX_T {
  uint8_t  s[256];
  uint8_t  k[16];
  uint32_t len;
  uint8_t  buf[BUFSIZ];
} RC4Z_CTX;
#pragma pack (pop)

void RC4z (RC4Z_CTX*);

void run_tests (void)
{
  int      i, plen, clen, klen;
  uint8_t  c1[128];
  RC4Z_CTX ctx;
  
  for (i=0; i<sizeof (test_keys)/sizeof(char*); i++)
  {
    memset (&ctx, 0, sizeof (ctx));
    
    klen=hex2bin (ctx.k,  test_keys[i]);
    clen=hex2bin (c1, test_ciphertexts[i]);
    plen=hex2bin (ctx.buf, test_plaintexts[i]);
    ctx.len=plen;
    
    RC4Z (&ctx);
  
    if (memcmp (c1, ctx.buf, clen)==0) {
      printf ("\nPassed test # %i : plen=%i, ctxlen=%i-bit", (i+1), plen, klen*8);
    } else {
      printf ("\nFailed test # %i : plen=%i, ctxlen=%i-bit", (i+1), plen, klen*8);
      dump ("required", c1, clen);
      dump ("result  ",   ctx.buf, clen);
    }
  }
}

int main (void)
{
  run_tests();
  return 0;
}
