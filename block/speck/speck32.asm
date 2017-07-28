; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	c:\hub\speck\speck32.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_speck32_setkey
; Function compile flags: /Ogspy
; File c:\hub\speck\speck32.c
;	COMDAT _speck32_setkey
_TEXT	SEGMENT
_i$ = 8							; size = 2
_in$ = 8						; size = 4
_out$ = 12						; size = 4
_speck32_setkey PROC					; COMDAT

; 36   : {

	push	ebp
	mov	ebp, esp

; 37   :   uint16_t i, t, k0, k1, k2, k3;
; 38   : 
; 39   :   // copy 64-bit key to local space
; 40   :   k0 = ((uint16_t*)in)[0];

	mov	ecx, DWORD PTR _in$[ebp]
	movzx	eax, WORD PTR [ecx]

; 41   :   k1 = ((uint16_t*)in)[1];
; 42   :   k2 = ((uint16_t*)in)[2];

	movzx	edx, WORD PTR [ecx+4]

; 43   :   k3 = ((uint16_t*)in)[3];
; 44   : 
; 45   :   // expand 64-bit key into round keys
; 46   :   for (i=0; i<22; i++)

	and	DWORD PTR _i$[ebp], 0
	push	ebx
	mov	ebx, DWORD PTR _out$[ebp]
	push	esi
	movzx	esi, WORD PTR [ecx+6]
	push	edi
	movzx	edi, WORD PTR [ecx+2]
$LL3@speck32_se:

; 47   :   {
; 48   :     ((uint16_t*)out)[i] = k0;
; 49   :     
; 50   :     k1 = (ROTR16(k1, 7) + k0) ^ i;

	push	7
	pop	ecx
	ror	di, cl
	mov	WORD PTR [ebx], ax

; 51   :     k0 = ROTL16(k0, 2) ^ k1;
; 52   :     
; 53   :     // rotate left 32-bits
; 54   :     XCHG(k3, k2, t);

	movzx	esi, si
	add	di, ax
	xor	di, WORD PTR _i$[ebp]
	rol	ax, 2
	movzx	ecx, di
	xor	ax, cx
	inc	DWORD PTR _i$[ebp]
	movzx	edi, dx
	add	ebx, 2
	cmp	WORD PTR _i$[ebp], 22			; 00000016H
	mov	edx, esi
	movzx	eax, ax

; 55   :     XCHG(k3, k1, t);

	mov	esi, ecx
	jb	SHORT $LL3@speck32_se
	pop	edi
	pop	esi
	pop	ebx

; 56   :   }
; 57   : }

	pop	ebp
	ret	0
_speck32_setkey ENDP
_TEXT	ENDS
PUBLIC	_speck32_encrypt
; Function compile flags: /Ogspy
;	COMDAT _speck32_encrypt
_TEXT	SEGMENT
_keys$ = 8						; size = 4
_enc$ = 12						; size = 4
tv148 = 16						; size = 4
_in$ = 16						; size = 4
_speck32_encrypt PROC					; COMDAT

; 63   : {

	push	ebp
	mov	ebp, esp

; 64   :   uint8_t i;
; 65   :   uint16_t *ks=(uint16_t*)keys;
; 66   :   
; 67   :   // copy input to local space
; 68   :   uint16_t x0 = ((uint16_t*)in)[0];

	mov	ecx, DWORD PTR _keys$[ebp]
	push	ebx
	push	esi
	mov	esi, DWORD PTR _in$[ebp]
	movzx	eax, WORD PTR [esi]

; 69   :   uint16_t x1 = ((uint16_t*)in)[1];

	movzx	edx, WORD PTR [esi+2]
	push	edi
	mov	ebx, ecx
	lea	edi, DWORD PTR [ecx+42]
	mov	DWORD PTR tv148[ebp], 22		; 00000016H
$LL5@speck32_en:

; 72   :   {   
; 73   :     if (enc == SPECK_DECRYPT)

	cmp	DWORD PTR _enc$[ebp], 1
	jne	SHORT $LN2@speck32_en

; 74   :     {
; 75   :       x1 = ROTR16(x1  ^ x0, 2); 

	xor	edx, eax
	push	2
	pop	ecx
	ror	dx, cl

; 76   :       x0 ^= ks[22-1-i];

	mov	cx, WORD PTR [edi]
	xor	cx, ax
	movzx	edx, dx

; 77   :       x0 -= x1;

	sub	cx, dx

; 78   :       x0 = ROTL16(x0, 7);        

	rol	cx, 7
	movzx	eax, cx

; 79   :     } else {     

	jmp	SHORT $LN4@speck32_en
$LN2@speck32_en:

; 80   :       x0 = (ROTR16(x0, 7) + x1) ^ ks[i];

	push	7
	pop	ecx
	ror	ax, cl
	add	ax, dx
	xor	ax, WORD PTR [ebx]

; 81   :       x1 =  ROTL16(x1, 2) ^ x0;

	rol	dx, 2
	movzx	eax, ax
	xor	dx, ax
	movzx	edx, dx
$LN4@speck32_en:

; 70   :   
; 71   :   for (i=0; i<22; i++)

	sub	edi, 2
	add	ebx, 2
	dec	DWORD PTR tv148[ebp]
	jne	SHORT $LL5@speck32_en

; 82   :     }  
; 83   :   }
; 84   :   // save result
; 85   :   ((uint16_t*)in)[0] = x0;

	pop	edi
	mov	WORD PTR [esi], ax

; 86   :   ((uint16_t*)in)[1] = x1;

	mov	WORD PTR [esi+2], dx
	pop	esi
	pop	ebx

; 87   : }

	pop	ebp
	ret	0
_speck32_encrypt ENDP
_TEXT	ENDS
PUBLIC	_speck32_encryptx
; Function compile flags: /Ogspy
;	COMDAT _speck32_encryptx
_TEXT	SEGMENT
_i$ = -4						; size = 2
_k3$ = 8						; size = 2
_key$ = 8						; size = 4
_in$ = 12						; size = 4
_speck32_encryptx PROC					; COMDAT

; 94   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 95   :   uint16_t i, t, k0, k1, k2, k3, x0, x1;
; 96   :   
; 97   :   // copy 128-bit key to local space
; 98   :   k0 = ((uint16_t*)key)[0];

	mov	eax, DWORD PTR _key$[ebp]
	movzx	edx, WORD PTR [eax]

; 99   :   k1 = ((uint16_t*)key)[1];
; 100  :   k2 = ((uint16_t*)key)[2];
; 101  :   k3 = ((uint16_t*)key)[3];
; 102  :   
; 103  :   // copy input to local space
; 104  :   x0 = ((uint16_t*)in)[0];

	mov	ecx, DWORD PTR _in$[ebp]

; 105  :   x1 = ((uint16_t*)in)[1];
; 106  :   
; 107  :   for (i=0; i<22; i++)

	and	DWORD PTR _i$[ebp], 0
	push	ebx
	movzx	ebx, WORD PTR [eax+2]
	push	esi
	movzx	esi, WORD PTR [ecx+2]
	push	edi
	movzx	edi, WORD PTR [eax+4]
	movzx	eax, WORD PTR [eax+6]
	mov	DWORD PTR _k3$[ebp], eax
	movzx	eax, WORD PTR [ecx]
$LL8@speck32_en@2:

; 108  :   {
; 109  :     // encrypt block
; 110  :     x0 = (ROTR16(x0, 7) + x1) ^ k0;

	push	7
	pop	ecx
	ror	ax, cl

; 111  :     x1 =  ROTL16(x1, 2) ^ x0;
; 112  :     
; 113  :     // create next subkey
; 114  :     k1 = (ROTR16(k1, 7) + k0) ^ i;
; 115  :     k0 =  ROTL16(k0, 2) ^ k1;
; 116  :     
; 117  :     XCHG(k3, k2, t);

	movzx	edi, di
	add	ax, si
	xor	ax, dx
	rol	si, 2
	movzx	eax, ax
	xor	si, ax
	ror	bx, cl
	movzx	esi, si
	add	bx, dx
	xor	bx, WORD PTR _i$[ebp]
	rol	dx, 2
	movzx	ecx, bx
	movzx	ebx, WORD PTR _k3$[ebp]
	xor	dx, cx
	inc	DWORD PTR _i$[ebp]
	cmp	WORD PTR _i$[ebp], 22			; 00000016H
	mov	DWORD PTR _k3$[ebp], edi
	mov	edi, ebx

; 118  :     XCHG(k3, k1, t);    

	movzx	ebx, WORD PTR _k3$[ebp]
	movzx	edx, dx
	mov	DWORD PTR _k3$[ebp], ecx
	jb	SHORT $LL8@speck32_en@2

; 119  :   }
; 120  :   // save result
; 121  :   ((uint16_t*)in)[0] = x0;

	mov	ecx, DWORD PTR _in$[ebp]
	pop	edi

; 122  :   ((uint16_t*)in)[1] = x1;

	mov	WORD PTR [ecx+2], si
	pop	esi
	mov	WORD PTR [ecx], ax
	pop	ebx

; 123  : }

	leave
	ret	0
_speck32_encryptx ENDP
_TEXT	ENDS
END
