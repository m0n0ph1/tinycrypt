; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

	TITLE	F:\gh\siphash\siphash2.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_perm
; Function compile flags: /Ogspy
;	COMDAT _perm
_TEXT	SEGMENT
tv139 = -40						; size = 8
_v0$ = -32						; size = 8
_v1$ = -24						; size = 8
_v3$ = -16						; size = 8
_v2$ = -8						; size = 8
_last$ = 8						; size = 4
_x$ = 12						; size = 8
_rnds$ = 20						; size = 4
_v$ = 20						; size = 4
_perm	PROC						; COMDAT
; File f:\gh\siphash\siphash2.c
; Line 10
	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
; Line 19
	cmp	DWORD PTR _last$[ebp], 0
	mov	eax, DWORD PTR _v$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _v1$[ebp], ecx
	mov	ecx, DWORD PTR [eax+16]
	push	ebx
	mov	ebx, DWORD PTR [eax+12]
	mov	DWORD PTR _v2$[ebp], ecx
	mov	ecx, DWORD PTR [eax+20]
	push	esi
	mov	esi, DWORD PTR [eax+28]
	mov	DWORD PTR _v2$[ebp+4], ecx
	mov	ecx, DWORD PTR [eax+24]
	push	edi
	mov	edi, DWORD PTR [eax]
	mov	DWORD PTR _v3$[ebp], ecx
	mov	DWORD PTR _v3$[ebp+4], esi
	je	SHORT $LN6@perm
; Line 20
	xor	DWORD PTR _v2$[ebp], 255		; 000000ffH
	xor	DWORD PTR _v2$[ebp+4], 0
; Line 21
	jmp	SHORT $LN5@perm
$LN6@perm:
; Line 22
	xor	ecx, DWORD PTR _x$[ebp]
	xor	esi, DWORD PTR _x$[ebp+4]
	mov	DWORD PTR _v3$[ebp], ecx
	mov	DWORD PTR _v3$[ebp+4], esi
$LN5@perm:
; Line 25
	mov	ecx, DWORD PTR _last$[ebp]
	push	2
	pop	esi
	shl	esi, cl
	mov	DWORD PTR _rnds$[ebp], esi
	jmp	SHORT $LN4@perm
$LL10@perm:
	mov	ebx, DWORD PTR _v1$[ebp+4]
$LN4@perm:
; Line 28
	add	edi, DWORD PTR _v1$[ebp]
; Line 29
	mov	ecx, ebx
	adc	edx, ebx
	mov	DWORD PTR _v0$[ebp+4], edx
	mov	edx, DWORD PTR _v1$[ebp]
	shld	ebx, edx, 13
	xor	esi, esi
	or	esi, ebx
; Line 30
	xor	esi, DWORD PTR _v0$[ebp+4]
; Line 33
	mov	ebx, DWORD PTR _v3$[ebp+4]
	shr	ecx, 19					; 00000013H
	mov	DWORD PTR _v0$[ebp], edi
	shl	edx, 13					; 0000000dH
	or	ecx, edx
	xor	ecx, edi
	mov	edi, DWORD PTR _v3$[ebp]
	add	DWORD PTR _v2$[ebp], edi
; Line 34
	mov	edx, ebx
	adc	DWORD PTR _v2$[ebp+4], ebx
	and	DWORD PTR tv139[ebp+4], 0
	shld	ebx, edi, 16
	shl	edi, 16					; 00000010H
	shr	edx, 16					; 00000010H
	or	edx, edi
; Line 35
	xor	edx, DWORD PTR _v2$[ebp]
	mov	edi, DWORD PTR tv139[ebp+4]
	or	edi, ebx
	xor	edi, DWORD PTR _v2$[ebp+4]
; Line 37
	add	DWORD PTR _v2$[ebp], ecx
	mov	DWORD PTR _v3$[ebp+4], edi
; Line 38
	mov	edi, esi
	adc	DWORD PTR _v2$[ebp+4], esi
	shld	esi, ecx, 17
	shl	ecx, 17					; 00000011H
	shr	edi, 15					; 0000000fH
	or	edi, ecx
; Line 39
	xor	edi, DWORD PTR _v2$[ebp]
; Line 40
	mov	ecx, DWORD PTR _v2$[ebp+4]
	xor	ebx, ebx
	or	ebx, esi
	xor	ebx, DWORD PTR _v2$[ebp+4]
	xor	esi, esi
	or	esi, DWORD PTR _v2$[ebp]
	mov	DWORD PTR _v1$[ebp], edi
	xor	edi, edi
	or	ecx, edi
	mov	edi, DWORD PTR _v0$[ebp+4]
	mov	DWORD PTR _v2$[ebp+4], esi
	xor	esi, esi
	or	esi, DWORD PTR _v0$[ebp]
	mov	DWORD PTR _v2$[ebp], ecx
	xor	ecx, ecx
	or	edi, ecx
; Line 42
	mov	ecx, DWORD PTR _v3$[ebp+4]
	add	edi, edx
	adc	esi, ecx
	mov	DWORD PTR _v0$[ebp+4], esi
; Line 43
	mov	esi, ecx
	shld	ecx, edx, 21
	shr	esi, 11					; 0000000bH
	mov	DWORD PTR _v1$[ebp+4], ebx
	shl	edx, 21					; 00000015H
	xor	ebx, ebx
	or	esi, edx
; Line 44
	mov	edx, DWORD PTR _v0$[ebp+4]
	or	ebx, ecx
	xor	esi, edi
	xor	ebx, edx
; Line 45
	dec	DWORD PTR _rnds$[ebp]
	mov	ecx, esi
	mov	esi, ebx
	mov	DWORD PTR _v3$[ebp], ecx
	mov	DWORD PTR _v3$[ebp+4], esi
	jne	$LL10@perm
; Line 47
	cmp	DWORD PTR _last$[ebp], 0
	jne	SHORT $LN1@perm
; Line 48
	xor	edi, DWORD PTR _x$[ebp]
	xor	edx, DWORD PTR _x$[ebp+4]
$LN1@perm:
; Line 50
	mov	DWORD PTR [eax+4], edx
; Line 51
	mov	edx, DWORD PTR _v1$[ebp]
	mov	DWORD PTR [eax+8], edx
	mov	edx, DWORD PTR _v1$[ebp+4]
	mov	DWORD PTR [eax+12], edx
; Line 52
	mov	edx, DWORD PTR _v2$[ebp]
	mov	DWORD PTR [eax], edi
	pop	edi
	mov	DWORD PTR [eax+16], edx
	mov	edx, DWORD PTR _v2$[ebp+4]
; Line 53
	mov	DWORD PTR [eax+28], esi
	pop	esi
	mov	DWORD PTR [eax+20], edx
	mov	DWORD PTR [eax+24], ecx
	pop	ebx
; Line 54
	leave
	ret	0
_perm	ENDP
_TEXT	ENDS
PUBLIC	_siphash24
EXTRN	__allshl:PROC
EXTRN	__aullshr:PROC
; Function compile flags: /Ogspy
;	COMDAT _siphash24
_TEXT	SEGMENT
_v$ = -44						; size = 32
_x$ = -12						; size = 8
_b$ = -12						; size = 8
_len$ = -4						; size = 4
_out$ = 8						; size = 4
_p$ = 12						; size = 4
_in$ = 12						; size = 4
tv139 = 16						; size = 4
tv93 = 16						; size = 4
_inlen$ = 16						; size = 4
tv95 = 20						; size = 4
_key$ = 20						; size = 4
_siphash24 PROC						; COMDAT
; Line 58
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
; Line 61
	mov	eax, DWORD PTR _inlen$[ebp]
; Line 62
	mov	ecx, DWORD PTR _in$[ebp]
	push	ebx
	mov	DWORD PTR _len$[ebp], eax
; Line 64
	cdq
	push	esi
; Line 66
	mov	esi, DWORD PTR _key$[ebp]
; Line 67
	mov	edx, DWORD PTR [esi+8]
	shl	eax, 24					; 00000018H
	push	edi
	mov	DWORD PTR _p$[ebp], ecx
	mov	ecx, DWORD PTR [esi+4]
	mov	DWORD PTR _b$[ebp+4], eax
	mov	eax, DWORD PTR [esi]
	mov	esi, DWORD PTR [esi+12]
; Line 69
	mov	edi, eax
	xor	edi, 1886610805				; 70736575H
	mov	ebx, ecx
	xor	ebx, 1936682341				; 736f6d65H
	mov	DWORD PTR _v$[ebp], edi
	mov	DWORD PTR _v$[ebp+4], ebx
; Line 70
	mov	edi, edx
	mov	ebx, esi
	xor	edi, 1852075885				; 6e646f6dH
	xor	ebx, 1685025377				; 646f7261H
; Line 71
	xor	eax, 1852142177				; 6e657261H
	xor	ecx, 1819895653				; 6c796765H
; Line 72
	xor	edx, 2037671283				; 79746573H
	xor	esi, 1952801890				; 74656462H
; Line 75
	cmp	DWORD PTR _inlen$[ebp], 0
	mov	DWORD PTR _v$[ebp+8], edi
	mov	DWORD PTR _v$[ebp+12], ebx
	mov	DWORD PTR _v$[ebp+16], eax
	mov	DWORD PTR _v$[ebp+20], ecx
	mov	DWORD PTR _v$[ebp+24], edx
	mov	DWORD PTR _v$[ebp+28], esi
	jle	$LN17@siphash24
$LL8@siphash24:
; Line 79
	mov	ecx, DWORD PTR _len$[ebp]
	xor	esi, esi
	xor	edi, edi
	cmp	ecx, 8
	jl	SHORT $LN12@siphash24
	push	8
	pop	ecx
$LN12@siphash24:
; Line 80
	test	ecx, ecx
	jle	SHORT $LN4@siphash24
	mov	ebx, ecx
$LL6@siphash24:
; Line 81
	mov	eax, DWORD PTR _p$[ebp]
	movzx	eax, BYTE PTR [eax]
	cdq
	or	esi, eax
	or	edi, edx
	inc	DWORD PTR _p$[ebp]
; Line 82
	mov	eax, esi
	shrd	esi, edi, 8
	xor	edx, edx
	shl	eax, 24					; 00000018H
	shr	edi, 8
	or	esi, edx
	or	edi, eax
	dec	ebx
	jne	SHORT $LL6@siphash24
$LN4@siphash24:
; Line 85
	sub	DWORD PTR _len$[ebp], ecx
; Line 87
	jne	SHORT $LN1@siphash24
; Line 89
	cmp	ecx, 8
	jge	SHORT $LN2@siphash24
; Line 90
	mov	ebx, ecx
	push	64					; 00000040H
	pop	ecx
	shl	ebx, 3
	sub	ecx, ebx
	mov	eax, esi
	mov	edx, edi
	call	__aullshr
	mov	DWORD PTR tv95[ebp], edx
	mov	DWORD PTR tv139[ebp], eax
	mov	eax, esi
	mov	edx, edi
	mov	ecx, ebx
	call	__allshl
; Line 91
	mov	esi, DWORD PTR tv139[ebp]
	or	esi, eax
	mov	eax, DWORD PTR tv95[ebp]
	or	eax, edx
	mov	edi, eax
	xor	eax, eax
	or	esi, eax
	or	edi, DWORD PTR _b$[ebp+4]
; Line 92
	jmp	SHORT $LN1@siphash24
$LN2@siphash24:
; Line 93
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	push	edi
	push	esi
	push	0
	call	_perm
; Line 94
	mov	edi, DWORD PTR _b$[ebp+4]
	add	esp, 16					; 00000010H
	xor	esi, esi
$LN1@siphash24:
; Line 98
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	push	edi
	push	esi
	push	0
	call	_perm
	add	esp, 16					; 00000010H
	cmp	DWORD PTR _len$[ebp], 0
	jg	$LL8@siphash24
; Line 75
	jmp	SHORT $LN7@siphash24
$LN17@siphash24:
	mov	edi, DWORD PTR _x$[ebp+4]
	mov	esi, DWORD PTR _x$[ebp]
$LN7@siphash24:
; Line 101
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	push	edi
	push	esi
	push	1
	call	_perm
; Line 103
	mov	ecx, DWORD PTR _v$[ebp+24]
	xor	ecx, DWORD PTR _v$[ebp+16]
	mov	edx, DWORD PTR _v$[ebp+28]
	xor	edx, DWORD PTR _v$[ebp+20]
	xor	ecx, DWORD PTR _v$[ebp+8]
	xor	edx, DWORD PTR _v$[ebp+12]
	xor	ecx, DWORD PTR _v$[ebp]
	mov	eax, DWORD PTR _out$[ebp]
	add	esp, 16					; 00000010H
	xor	edx, DWORD PTR _v$[ebp+4]
	pop	edi
	pop	esi
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
	pop	ebx
; Line 104
	leave
	ret	0
_siphash24 ENDP
_TEXT	ENDS
END
