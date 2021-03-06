; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\hub\chaskey\chaskey.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_chas_setkey
; Function compile flags: /Ogspy
;	COMDAT _chas_setkey
_TEXT	SEGMENT
tv368 = 8						; size = 4
_out$ = 8						; size = 4
_in$ = 12						; size = 4
_chas_setkey PROC					; COMDAT
; File c:\hub\chaskey\chaskey.c
; Line 33
	push	ebp
	mov	ebp, esp
; Line 37
	mov	eax, DWORD PTR _out$[ebp]
	push	ebx
	push	esi
	mov	esi, DWORD PTR _in$[ebp]
	push	edi
	push	16					; 00000010H
	mov	edi, eax
	pop	ecx
	rep movsb
	add	eax, 4
	mov	DWORD PTR tv368[ebp], 2
$LL3@chas_setke:
; Line 41
	mov	edi, DWORD PTR [eax+8]
	mov	ecx, DWORD PTR [eax-4]
	mov	edx, edi
	shr	edx, 31					; 0000001fH
	imul	edx, 135				; 00000087H
	lea	ebx, DWORD PTR [ecx+ecx]
	xor	edx, ebx
	mov	DWORD PTR [eax+12], edx
; Line 42
	mov	edx, DWORD PTR [eax]
	lea	ebx, DWORD PTR [edx+edx]
	shr	ecx, 31					; 0000001fH
	or	ecx, ebx
	mov	DWORD PTR [eax+16], ecx
; Line 43
	mov	ecx, DWORD PTR [eax+4]
	shr	edx, 31					; 0000001fH
	lea	ebx, DWORD PTR [ecx+ecx]
	or	ebx, edx
; Line 44
	shr	ecx, 31					; 0000001fH
	lea	edx, DWORD PTR [edi+edi]
	or	edx, ecx
	mov	DWORD PTR [eax+20], ebx
	mov	DWORD PTR [eax+24], edx
; Line 46
	add	eax, 16					; 00000010H
	dec	DWORD PTR tv368[ebp]
	jne	SHORT $LL3@chas_setke
	pop	edi
	pop	esi
	pop	ebx
; Line 48
	pop	ebp
	ret	0
_chas_setkey ENDP
_TEXT	ENDS
PUBLIC	_chas_permute
; Function compile flags: /Ogspy
;	COMDAT _chas_permute
_TEXT	SEGMENT
_v$ = 8							; size = 4
_chas_permute PROC					; COMDAT
; Line 52
	mov	eax, DWORD PTR _v$[esp-4]
	mov	ecx, DWORD PTR [eax]
; Line 70
	mov	edx, DWORD PTR [eax+4]
	push	ebx
	push	esi
	mov	esi, DWORD PTR [eax+12]
	push	edi
	mov	edi, DWORD PTR [eax+8]
	push	12					; 0000000cH
	pop	ebx
$LL3@chas_permu:
; Line 57
	add	ecx, edx
	rol	edx, 5
; Line 58
	xor	edx, ecx
; Line 60
	add	edi, esi
; Line 61
	rol	esi, 8
; Line 62
	xor	esi, edi
	rol	ecx, 16					; 00000010H
; Line 63
	add	ecx, esi
; Line 64
	rol	esi, 13					; 0000000dH
; Line 66
	add	edi, edx
	xor	esi, ecx
; Line 67
	rol	edx, 7
; Line 68
	xor	edx, edi
; Line 69
	rol	edi, 16					; 00000010H
; Line 70
	dec	ebx
	mov	DWORD PTR [eax], ecx
	jne	SHORT $LL3@chas_permu
; Line 71
	mov	DWORD PTR [eax+8], edi
	pop	edi
	mov	DWORD PTR [eax+12], esi
	pop	esi
	mov	DWORD PTR [eax+4], edx
	pop	ebx
	ret	0
_chas_permute ENDP
_TEXT	ENDS
PUBLIC	_chas_xor
; Function compile flags: /Ogspy
;	COMDAT _chas_xor
_TEXT	SEGMENT
_out$ = 8						; size = 4
_in$ = 12						; size = 4
_len$ = 16						; size = 4
_chas_xor PROC						; COMDAT
; Line 73
	push	esi
; Line 76
	mov	esi, DWORD PTR _len$[esp]
	test	esi, esi
	jle	SHORT $LN1@chas_xor
	mov	eax, DWORD PTR _out$[esp]
	mov	ecx, DWORD PTR _in$[esp]
	sub	ecx, eax
$LL3@chas_xor:
; Line 77
	mov	dl, BYTE PTR [ecx+eax]
	xor	BYTE PTR [eax], dl
	inc	eax
	dec	esi
	jne	SHORT $LL3@chas_xor
$LN1@chas_xor:
	pop	esi
; Line 79
	ret	0
_chas_xor ENDP
_TEXT	ENDS
PUBLIC	_chas_mac
; Function compile flags: /Ogspy
;	COMDAT _chas_mac
_TEXT	SEGMENT
_v$ = -16						; size = 16
_tag$ = 8						; size = 4
_msg$ = 12						; size = 4
_msglen$ = 16						; size = 4
_key$ = 20						; size = 4
_chas_mac PROC						; COMDAT
; Line 83
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	push	ebx
	push	esi
; Line 88
	mov	esi, DWORD PTR _key$[ebp]
	push	edi
	push	16					; 00000010H
	pop	ebx
	lea	edi, DWORD PTR _v$[ebp]
	mov	ecx, ebx
	rep movsb
	mov	esi, DWORD PTR _msglen$[ebp]
$LL4@chas_mac:
; Line 93
	mov	eax, esi
	cmp	esi, ebx
	jb	SHORT $LN8@chas_mac
	mov	eax, ebx
$LN8@chas_mac:
; Line 96
	push	eax
	push	DWORD PTR _msg$[ebp]
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_xor
	add	esp, 12					; 0000000cH
; Line 99
	cmp	esi, ebx
	jbe	SHORT $LN12@chas_mac
; Line 109
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_permute
; Line 112
	add	DWORD PTR _msg$[ebp], ebx
	pop	ecx
; Line 113
	sub	esi, ebx
; Line 114
	jmp	SHORT $LL4@chas_mac
$LN12@chas_mac:
; Line 100
	jae	SHORT $LN1@chas_mac
; Line 102
	xor	BYTE PTR _v$[ebp+esi], 1
$LN1@chas_mac:
; Line 104
	xor	eax, eax
	cmp	esi, ebx
	setne	al
; Line 117
	push	ebx
	dec	eax
	and	eax, -16				; fffffff0H
	add	eax, 32					; 00000020H
	add	DWORD PTR _key$[ebp], eax
	push	DWORD PTR _key$[ebp]
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_xor
; Line 119
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_permute
; Line 121
	push	ebx
	push	DWORD PTR _key$[ebp]
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_xor
; Line 123
	mov	edi, DWORD PTR _tag$[ebp]
	add	esp, 28					; 0000001cH
	mov	ecx, ebx
	lea	esi, DWORD PTR _v$[ebp]
	rep movsb
	pop	edi
	pop	esi
	pop	ebx
; Line 124
	leave
	ret	0
_chas_mac ENDP
_TEXT	ENDS
END
