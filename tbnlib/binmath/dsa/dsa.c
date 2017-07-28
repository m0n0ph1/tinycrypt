


// Digital Signature Algorithm
// Odzhan

#define RP 32

#include "binmath.h"

int main (int argc, char *argv[])
{
  uint64_t p, q, g, t, x, y, k, r, s=0, kinv, xr, H;
  uint64_t v, w, u1, u2;
  char *m;

  puts ("\n  Digital Signature Algorithm example");
  
  if (argc != 2) {
    printf ("\n  usage: dsa <message>\n");
    return 0;
  }
  m=argv[1];
  printf ("\n  Generating p...");
  p=safe_prime(RP);
  printf ("%llX\n  Generating g...", p);
  
  // find g
  q=(p-1)/2;
  for (g=1; g == 1;) {
    // g = t ^ (p-1)/q % p
    t=rand_range (q);            // normally, t would be a hash of q bits
    g=powmod (t, (p-1)/q, p);
  }
  printf ("%llX\n", g);
  
  /** 
  generated by modified openssl gen_params
  
  p=hex2bin("5E6DDA8BC9B2B5A9");
  q=hex2bin("D549");
  g=hex2bin("22729DB49EE21F4B");
  */
  printf ("\np=%llX\nq=%llX\ng=%llX", p, q, g);
  
  // generate random x in range of q
  x=rand_range(q);
  // y = g ^ x % p
  y=powmod (g, x, p);
  
  printf ("\n\npublic key = %llX\nPrivate key = %llX", y, x);
  
  H=hex2bin(m);
  
  // sign message
  do {
    // generate k in range of q
    k=rand_range(q);
    // k ^ -1 % q
    kinv=invmod (k, q);
    // r = (g ^ k % p) % q
    r=modulo (powmod (g, k, p), q);
    if (r == 0)
      continue;      
    // s = (kinv * (H + x*r)) % q
    xr=multiply (x, r);
    s=add (xr, H);
    s=mulmod (s, kinv, q);
  } while (s == 0);
    
  printf ("\n\n(k=%llX, r=%llX, s=%llX)", k, r, s);
  
  // now verify
  
  // w = s invmod q
  w=invmod (s, q);
  // u1 = (H * w) % q
  u1=mulmod(H, w, q);
  // u2 = (r * w) % q
  u2=mulmod(r, w, q);
  // v = ((g^u1 * y^u2) % p) % q
  u1=powmod (g, u1, p);
  u2=powmod (y, u2, p);
  
  v=mulmod(u1, u2, p);
  v=modulo(v, q);
  
  printf ("\nv = %llX", v);
  printf ("\n  signature is %s", v==r ? "valid" : "invalid");
  
  return 0;
}
