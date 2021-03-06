; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\odzhan\tinycrypt\aead\primates\primatesv1_1hanuman80\ref\primate.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?rc_p4@@3PAEA					; rc_p4
PUBLIC	?rc_p1@@3PAEA					; rc_p1
PUBLIC	?sbox5@@3PAEA					; sbox5
PUBLIC	?shiftconst@@3PAHA				; shiftconst
_BSS	SEGMENT
?rc_p4@@3PAEA DB 0cH DUP (?)				; rc_p4
?rc_p1@@3PAEA DB 0cH DUP (?)				; rc_p1
_BSS	ENDS
_DATA	SEGMENT
?sbox5@@3PAEA DB 01H					; sbox5
	DB	00H
	DB	019H
	DB	01aH
	DB	011H
	DB	01dH
	DB	015H
	DB	01bH
	DB	014H
	DB	05H
	DB	04H
	DB	017H
	DB	0eH
	DB	012H
	DB	02H
	DB	01cH
	DB	0fH
	DB	08H
	DB	06H
	DB	03H
	DB	0dH
	DB	07H
	DB	018H
	DB	010H
	DB	01eH
	DB	09H
	DB	01fH
	DB	0aH
	DB	016H
	DB	0cH
	DB	0bH
	DB	013H
?shiftconst@@3PAHA DD 00H				; shiftconst
	DD	01H
	DD	02H
	DD	04H
	DD	07H
_DATA	ENDS
PUBLIC	?Get5bits@@YAEPBEH@Z				; Get5bits
; Function compile flags: /Ogspy
;	COMDAT ?Get5bits@@YAEPBEH@Z
_TEXT	SEGMENT
_in$ = 8						; size = 4
_i$ = 12						; size = 4
?Get5bits@@YAEPBEH@Z PROC				; Get5bits, COMDAT
; File c:\odzhan\tinycrypt\aead\primates\primatesv1_1hanuman80\ref\primate.cpp
; Line 17
	mov	ecx, DWORD PTR _i$[esp-4]
	imul	ecx, 5
	mov	eax, ecx
	cdq
	and	edx, 7
	add	eax, edx
	mov	edx, DWORD PTR _in$[esp-4]
	sar	eax, 3
	add	edx, eax
	movzx	eax, BYTE PTR [edx]
	shl	eax, 8
; Line 18
	and	ecx, -2147483641			; 80000007H
	jns	SHORT $LN4@Get5bits
	dec	ecx
	or	ecx, -8					; fffffff8H
	inc	ecx
$LN4@Get5bits:
	cmp	ecx, 3
	jle	SHORT $LN1@Get5bits
	movzx	edx, BYTE PTR [edx+1]
	or	eax, edx
$LN1@Get5bits:
; Line 20
	shl	eax, cl
; Line 21
	shr	eax, 11					; 0000000bH
	and	eax, 31					; 0000001fH
; Line 22
	ret	0
?Get5bits@@YAEPBEH@Z ENDP				; Get5bits
_TEXT	ENDS
PUBLIC	?Get8bits@@YAEPBEH@Z				; Get8bits
; Function compile flags: /Ogspy
;	COMDAT ?Get8bits@@YAEPBEH@Z
_TEXT	SEGMENT
_in$ = 8						; size = 4
_i$ = 12						; size = 4
?Get8bits@@YAEPBEH@Z PROC				; Get8bits, COMDAT
; Line 28
	mov	eax, DWORD PTR _i$[esp-4]
	push	esi
	shl	eax, 3
	push	edi
	cdq
	push	5
	pop	ecx
	idiv	ecx
	mov	edi, 1023				; 000003ffH
	mov	ecx, edx
	mov	edx, DWORD PTR _in$[esp+4]
	lea	esi, DWORD PTR [eax+edx]
	movzx	eax, BYTE PTR [esi+1]
	movzx	edx, BYTE PTR [esi]
	and	eax, edi
	shl	edx, 5
	or	eax, edx
	shl	eax, 5
; Line 29
	cmp	ecx, 2
	jle	SHORT $LN1@Get8bits
	movzx	edx, BYTE PTR [esi+2]
	and	edx, edi
	or	eax, edx
$LN1@Get8bits:
; Line 30
	shl	eax, cl
	pop	edi
	pop	esi
; Line 31
	shr	eax, 7
; Line 32
	ret	0
?Get8bits@@YAEPBEH@Z ENDP				; Get8bits
_TEXT	ENDS
PUBLIC	?Bytes2Element@@YAXPAEPBE_KH@Z			; Bytes2Element
; Function compile flags: /Ogspy
;	COMDAT ?Bytes2Element@@YAXPAEPBE_KH@Z
_TEXT	SEGMENT
_inE$ = 8						; size = 4
_in$ = 12						; size = 4
_start$ = 16						; size = 8
_numElem$ = 24						; size = 4
?Bytes2Element@@YAXPAEPBE_KH@Z PROC			; Bytes2Element, COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	push	esi
; Line 36
	xor	esi, esi
	cmp	DWORD PTR _numElem$[ebp], esi
	jle	SHORT $LN1@Bytes2Elem
; Line 37
	push	edi
	mov	edi, DWORD PTR _start$[ebp]
	add	edi, DWORD PTR _in$[ebp]
$LL3@Bytes2Elem:
	push	esi
	push	edi
	call	?Get5bits@@YAEPBEH@Z			; Get5bits
	pop	ecx
	pop	ecx
	mov	ecx, DWORD PTR _inE$[ebp]
	mov	BYTE PTR [esi+ecx], al
	inc	esi
	cmp	esi, DWORD PTR _numElem$[ebp]
	jl	SHORT $LL3@Bytes2Elem
	pop	edi
$LN1@Bytes2Elem:
	pop	esi
; Line 38
	pop	ebp
	ret	0
?Bytes2Element@@YAXPAEPBE_KH@Z ENDP			; Bytes2Element
_TEXT	ENDS
PUBLIC	?Element2Bytes@@YAXPAE0_KH@Z			; Element2Bytes
; Function compile flags: /Ogspy
;	COMDAT ?Element2Bytes@@YAXPAE0_KH@Z
_TEXT	SEGMENT
_in$ = 8						; size = 4
_inE$ = 12						; size = 4
_start$ = 16						; size = 8
_numBytes$ = 24						; size = 4
?Element2Bytes@@YAXPAE0_KH@Z PROC			; Element2Bytes, COMDAT
; Line 41
	push	ebp
	mov	ebp, esp
	push	esi
; Line 42
	xor	esi, esi
	cmp	DWORD PTR _numBytes$[ebp], esi
	jle	SHORT $LN1@Element2By
	push	edi
	mov	edi, DWORD PTR _start$[ebp]
	add	edi, DWORD PTR _in$[ebp]
$LL3@Element2By:
; Line 43
	push	esi
	push	DWORD PTR _inE$[ebp]
	call	?Get8bits@@YAEPBEH@Z			; Get8bits
	mov	BYTE PTR [edi+esi], al
	inc	esi
	pop	ecx
	pop	ecx
	cmp	esi, DWORD PTR _numBytes$[ebp]
	jl	SHORT $LL3@Element2By
	pop	edi
$LN1@Element2By:
	pop	esi
; Line 44
	pop	ebp
	ret	0
?Element2Bytes@@YAXPAE0_KH@Z ENDP			; Element2Bytes
_TEXT	ENDS
PUBLIC	?SubElements@@YAXPAE@Z				; SubElements
; Function compile flags: /Ogspy
;	COMDAT ?SubElements@@YAXPAE@Z
_TEXT	SEGMENT
_state$ = 8						; size = 4
?SubElements@@YAXPAE@Z PROC				; SubElements, COMDAT
; Line 95
	xor	ecx, ecx
$LL3@SubElement:
	mov	eax, DWORD PTR _state$[esp-4]
; Line 96
	movzx	edx, BYTE PTR [eax+ecx]
	mov	dl, BYTE PTR ?sbox5@@3PAEA[edx]
	mov	BYTE PTR [eax+ecx], dl
	inc	ecx
	cmp	ecx, 40					; 00000028H
	jl	SHORT $LL3@SubElement
; Line 97
	ret	0
?SubElements@@YAXPAE@Z ENDP				; SubElements
_TEXT	ENDS
PUBLIC	?ShiftRows@@YAXPAE@Z				; ShiftRows
;EXTRN	_memcpy:PROC
; Function compile flags: /Ogspy
;	COMDAT ?ShiftRows@@YAXPAE@Z
_TEXT	SEGMENT
_tmp$ = -44						; size = 40
tv272 = -4						; size = 4
_state$ = 8						; size = 4
?ShiftRows@@YAXPAE@Z PROC				; ShiftRows, COMDAT
; Line 100
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
; Line 102
	mov	edx, DWORD PTR _state$[ebp]
	push	ebx
	push	esi
	push	edi
	xor	edi, edi
	mov	DWORD PTR tv272[ebp], OFFSET ?shiftconst@@3PAHA ; shiftconst
$LL18@ShiftRows:
; Line 103
	mov	ecx, DWORD PTR tv272[ebp]
	mov	esi, DWORD PTR [ecx]
	xor	eax, eax
	lea	ecx, DWORD PTR _tmp$[ebp+edi]
$LL6@ShiftRows:
; Line 104
	mov	ebx, esi
	and	ebx, -2147483641			; 80000007H
	jns	SHORT $LN19@ShiftRows
	dec	ebx
	or	ebx, -8					; fffffff8H
	inc	ebx
$LN19@ShiftRows:
	add	ebx, edi
	mov	bl, BYTE PTR [ebx+edx]
	mov	BYTE PTR [ecx+eax], bl
	inc	eax
	inc	esi
	cmp	eax, 8
	jl	SHORT $LL6@ShiftRows
; Line 102
	add	DWORD PTR tv272[ebp], 4
	add	edi, 8
	cmp	DWORD PTR tv272[ebp], OFFSET ?shiftconst@@3PAHA+20
	jl	SHORT $LL18@ShiftRows
; Line 108
	push	40					; 00000028H
	lea	eax, DWORD PTR _tmp$[ebp]
	push	eax
	push	edx
	;call	_memcpy
	add	esp, 12					; 0000000cH
	pop	edi
	pop	esi
	pop	ebx
; Line 109
	leave
	ret	0
?ShiftRows@@YAXPAE@Z ENDP				; ShiftRows
_TEXT	ENDS
PUBLIC	?T2@@YAEE@Z					; T2
; Function compile flags: /Ogspy
;	COMDAT ?T2@@YAEE@Z
_TEXT	SEGMENT
_element$ = 8						; size = 1
?T2@@YAEE@Z PROC					; T2, COMDAT
; Line 115
	mov	cl, BYTE PTR _element$[esp-4]
	mov	al, cl
	and	al, 16					; 00000010H
	neg	al
	sbb	al, al
	and	cl, 15					; 0000000fH
	and	al, 5
	add	cl, cl
	xor	al, cl
; Line 116
	ret	0
?T2@@YAEE@Z ENDP					; T2
_TEXT	ENDS
PUBLIC	?T18@@YAEE@Z					; T18
; Function compile flags: /Ogspy
;	COMDAT ?T18@@YAEE@Z
_TEXT	SEGMENT
_element$ = 8						; size = 1
?T18@@YAEE@Z PROC					; T18, COMDAT
; Line 121
	mov	al, BYTE PTR _element$[esp-4]
	mov	dl, al
	and	dl, 16					; 00000010H
	neg	dl
	sbb	dl, dl
	and	al, 15					; 0000000fH
	add	al, al
	and	dl, 5
	xor	dl, al
; Line 122
	mov	al, dl
	and	al, 16					; 00000010H
	neg	al
	sbb	al, al
	and	al, 5
	mov	cl, dl
	and	cl, 15					; 0000000fH
	add	cl, cl
	xor	al, cl
; Line 123
	mov	cl, al
	and	cl, 16					; 00000010H
	neg	cl
	sbb	cl, cl
	and	al, 15					; 0000000fH
	add	al, al
	and	cl, 5
	xor	cl, al
; Line 126
	mov	al, cl
	and	al, 16					; 00000010H
	neg	al
	sbb	al, al
	and	cl, 15					; 0000000fH
	and	al, 5
	add	cl, cl
	xor	al, cl
	xor	al, dl
; Line 127
	ret	0
?T18@@YAEE@Z ENDP					; T18
_TEXT	ENDS
PUBLIC	?MixColumns@@YAXPAE@Z				; MixColumns
; Function compile flags: /Ogspy
;	COMDAT ?MixColumns@@YAXPAE@Z
_TEXT	SEGMENT
_tmp$ = -68						; size = 40
tv415 = -28						; size = 4
tv683 = -24						; size = 4
tv593 = -20						; size = 4
tv74 = -16						; size = 4
$T4054 = -12						; size = 1
$T4059 = -8						; size = 1
tv653 = -1						; size = 1
tv649 = -1						; size = 1
_state$ = 8						; size = 4
?MixColumns@@YAXPAE@Z PROC				; MixColumns, COMDAT
; Line 130
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	lea	eax, DWORD PTR _tmp$[ebp]
	sub	eax, DWORD PTR _state$[ebp]
	push	edi
	lea	edi, DWORD PTR _tmp$[ebp+16]
	sub	edi, DWORD PTR _state$[ebp]
; Line 132
	mov	DWORD PTR tv415[ebp], eax
	mov	DWORD PTR tv683[ebp], 5
$LL27@MixColumns:
; Line 133
	mov	esi, DWORD PTR _state$[ebp]
	add	esi, 16					; 00000010H
	mov	DWORD PTR tv593[ebp], 8
$LL28@MixColumns:
; Line 134
	mov	eax, DWORD PTR tv415[ebp]
	lea	eax, DWORD PTR [esi+eax-16]
	lea	ecx, DWORD PTR [esi-8]
	mov	DWORD PTR tv74[ebp], 4
$LL6@MixColumns:
; Line 135
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	add	ecx, 8
	add	eax, 8
	dec	DWORD PTR tv74[ebp]
	jne	SHORT $LL6@MixColumns
; Line 136
	mov	al, BYTE PTR [esi]
	mov	BYTE PTR $T4054[ebp], al
	mov	al, BYTE PTR [esi+8]
	mov	BYTE PTR $T4059[ebp], al
	movzx	eax, BYTE PTR [esi+16]
	push	eax
	call	?T18@@YAEE@Z				; T18
	movzx	ecx, BYTE PTR [esi-8]
	push	ecx
	mov	BYTE PTR tv653[ebp], al
	call	?T18@@YAEE@Z				; T18
	pop	ecx
	pop	ecx
	mov	cl, BYTE PTR tv653[ebp]
	xor	cl, al
	mov	al, BYTE PTR $T4054[ebp]
	mov	bl, cl
	mov	cl, BYTE PTR $T4059[ebp]
	mov	dl, cl
	xor	dl, al
	and	dl, 15					; 0000000fH
	add	dl, dl
	xor	bl, dl
	and	cl, 16					; 00000010H
	neg	cl
	sbb	cl, cl
	and	cl, 5
	and	al, 16					; 00000010H
	xor	bl, cl
	neg	al
	sbb	al, al
	and	al, 5
	xor	bl, al
	xor	bl, BYTE PTR [esi-16]
	mov	BYTE PTR [edi+esi], bl
	inc	esi
	dec	DWORD PTR tv593[ebp]
	jne	SHORT $LL28@MixColumns
; Line 139
	push	40					; 00000028H
	lea	eax, DWORD PTR _tmp$[ebp]
	push	eax
	push	DWORD PTR _state$[ebp]
	;call	_memcpy
	add	esp, 12					; 0000000cH
	dec	DWORD PTR tv683[ebp]
	jne	$LL27@MixColumns
	pop	edi
	pop	esi
	pop	ebx
; Line 141
	leave
	ret	0
?MixColumns@@YAXPAE@Z ENDP				; MixColumns
_TEXT	ENDS
PUBLIC	?primate@@YAXPAE@Z				; primate
; Function compile flags: /Ogspy
;	COMDAT ?primate@@YAXPAE@Z
_TEXT	SEGMENT
_state$ = 8						; size = 4
?primate@@YAXPAE@Z PROC					; primate, COMDAT
; Line 144
	push	esi
; Line 147
	mov	esi, DWORD PTR _state$[esp]
	push	esi
	call	?SubElements@@YAXPAE@Z			; SubElements
; Line 151
	push	esi
	call	?ShiftRows@@YAXPAE@Z			; ShiftRows
; Line 155
	push	esi
	call	?MixColumns@@YAXPAE@Z			; MixColumns
	add	esp, 12					; 0000000cH
	pop	esi
; Line 157
	ret	0
?primate@@YAXPAE@Z ENDP					; primate
_TEXT	ENDS
PUBLIC	?GenerateRoundConstants@@YAXXZ			; GenerateRoundConstants
; Function compile flags: /Ogspy
;	COMDAT ?GenerateRoundConstants@@YAXXZ
_TEXT	SEGMENT
?GenerateRoundConstants@@YAXXZ PROC			; GenerateRoundConstants, COMDAT
; Line 160
	push	esi
; Line 162
	push	11					; 0000000bH
	mov	BYTE PTR ?rc_p1@@3PAEA, 1
	mov	ecx, OFFSET ?rc_p1@@3PAEA		; rc_p1
	pop	esi
$LL6@GenerateRo:
; Line 165
	mov	al, BYTE PTR [ecx]
	mov	dl, al
	shr	dl, 3
	xor	dl, al
	shr	dl, 1
	and	al, 15					; 0000000fH
	and	dl, 1
	add	al, al
	inc	ecx
	xor	dl, al
	dec	esi
	mov	BYTE PTR [ecx], dl
	jne	SHORT $LL6@GenerateRo
; Line 170
	mov	al, BYTE PTR ?rc_p1@@3PAEA+11
	mov	cl, al
	shr	cl, 3
	xor	cl, al
	shr	cl, 1
	and	al, 15					; 0000000fH
	and	cl, 1
	add	al, al
	xor	cl, al
	push	11					; 0000000bH
	mov	BYTE PTR ?rc_p4@@3PAEA, cl
	mov	ecx, OFFSET ?rc_p4@@3PAEA		; rc_p4
	pop	esi
$LL3@GenerateRo:
; Line 173
	mov	al, BYTE PTR [ecx]
	mov	dl, al
	shr	dl, 3
	xor	dl, al
	shr	dl, 1
	and	al, 15					; 0000000fH
	and	dl, 1
	add	al, al
	inc	ecx
	xor	dl, al
	dec	esi
	mov	BYTE PTR [ecx], dl
	jne	SHORT $LL3@GenerateRo
	pop	esi
; Line 176
	ret	0
?GenerateRoundConstants@@YAXXZ ENDP			; GenerateRoundConstants
_TEXT	ENDS
PUBLIC	?InitializeState@@YAXPAE00@Z			; InitializeState
; Function compile flags: /Ogspy
;	COMDAT ?InitializeState@@YAXPAE00@Z
_TEXT	SEGMENT
_state$ = 8						; size = 4
_key$ = 12						; size = 4
_nonce$ = 16						; size = 4
?InitializeState@@YAXPAE00@Z PROC			; InitializeState, COMDAT
; Line 179
	push	edi
; Line 180
	call	?GenerateRoundConstants@@YAXXZ		; GenerateRoundConstants
; Line 183
	mov	ecx, DWORD PTR _state$[esp]
	xor	eax, eax
	mov	edi, ecx
	stosd
	stosd
; Line 184
	xor	eax, eax
	pop	edi
$LL6@Initialize:
; Line 185
	mov	edx, DWORD PTR _key$[esp-4]
	mov	dl, BYTE PTR [eax+edx]
	mov	BYTE PTR [ecx+eax+8], dl
	inc	eax
	cmp	eax, 16					; 00000010H
	jl	SHORT $LL6@Initialize
; Line 186
	xor	eax, eax
$LL3@Initialize:
; Line 187
	mov	edx, DWORD PTR _nonce$[esp-4]
	mov	dl, BYTE PTR [eax+edx]
	mov	BYTE PTR [ecx+eax+24], dl
	inc	eax
	cmp	eax, 16					; 00000010H
	jl	SHORT $LL3@Initialize
; Line 188
	ret	0
?InitializeState@@YAXPAE00@Z ENDP			; InitializeState
_TEXT	ENDS
PUBLIC	?p_1@@YAXPAE@Z					; p_1
; Function compile flags: /Ogspy
;	COMDAT ?p_1@@YAXPAE@Z
_TEXT	SEGMENT
_state$ = 8						; size = 4
?p_1@@YAXPAE@Z PROC					; p_1, COMDAT
; Line 191
	push	esi
	push	edi
; Line 192
	mov	edi, DWORD PTR _state$[esp+4]
	xor	esi, esi
$LL3@p_1:
; Line 194
	push	edi
	call	?primate@@YAXPAE@Z			; primate
; Line 195
	mov	al, BYTE PTR ?rc_p1@@3PAEA[esi]
	xor	BYTE PTR [edi+9], al
	inc	esi
	pop	ecx
	cmp	esi, 12					; 0000000cH
	jl	SHORT $LL3@p_1
; Line 198
	pop	edi
	pop	esi
	ret	0
?p_1@@YAXPAE@Z ENDP					; p_1
_TEXT	ENDS
PUBLIC	?p_4@@YAXPAE@Z					; p_4
; Function compile flags: /Ogspy
;	COMDAT ?p_4@@YAXPAE@Z
_TEXT	SEGMENT
_state$ = 8						; size = 4
?p_4@@YAXPAE@Z PROC					; p_4, COMDAT
; Line 201
	push	esi
	push	edi
; Line 202
	mov	edi, DWORD PTR _state$[esp+4]
	xor	esi, esi
$LL3@p_4:
; Line 204
	push	edi
	call	?primate@@YAXPAE@Z			; primate
; Line 205
	mov	al, BYTE PTR ?rc_p4@@3PAEA[esi]
	xor	BYTE PTR [edi+9], al
	inc	esi
	pop	ecx
	cmp	esi, 12					; 0000000cH
	jl	SHORT $LL3@p_4
; Line 207
	pop	edi
	pop	esi
	ret	0
?p_4@@YAXPAE@Z ENDP					; p_4
_TEXT	ENDS
END
