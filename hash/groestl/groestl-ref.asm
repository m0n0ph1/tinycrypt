; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\odzhan\tinycrypt\hash\groestl\groestl-ref.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_S
PUBLIC	_Shift
_DATA	SEGMENT
_S	DB	063H
	DB	07cH
	DB	077H
	DB	07bH
	DB	0f2H
	DB	06bH
	DB	06fH
	DB	0c5H
	DB	030H
	DB	01H
	DB	067H
	DB	02bH
	DB	0feH
	DB	0d7H
	DB	0abH
	DB	076H
	DB	0caH
	DB	082H
	DB	0c9H
	DB	07dH
	DB	0faH
	DB	059H
	DB	047H
	DB	0f0H
	DB	0adH
	DB	0d4H
	DB	0a2H
	DB	0afH
	DB	09cH
	DB	0a4H
	DB	072H
	DB	0c0H
	DB	0b7H
	DB	0fdH
	DB	093H
	DB	026H
	DB	036H
	DB	03fH
	DB	0f7H
	DB	0ccH
	DB	034H
	DB	0a5H
	DB	0e5H
	DB	0f1H
	DB	071H
	DB	0d8H
	DB	031H
	DB	015H
	DB	04H
	DB	0c7H
	DB	023H
	DB	0c3H
	DB	018H
	DB	096H
	DB	05H
	DB	09aH
	DB	07H
	DB	012H
	DB	080H
	DB	0e2H
	DB	0ebH
	DB	027H
	DB	0b2H
	DB	075H
	DB	09H
	DB	083H
	DB	02cH
	DB	01aH
	DB	01bH
	DB	06eH
	DB	05aH
	DB	0a0H
	DB	052H
	DB	03bH
	DB	0d6H
	DB	0b3H
	DB	029H
	DB	0e3H
	DB	02fH
	DB	084H
	DB	053H
	DB	0d1H
	DB	00H
	DB	0edH
	DB	020H
	DB	0fcH
	DB	0b1H
	DB	05bH
	DB	06aH
	DB	0cbH
	DB	0beH
	DB	039H
	DB	04aH
	DB	04cH
	DB	058H
	DB	0cfH
	DB	0d0H
	DB	0efH
	DB	0aaH
	DB	0fbH
	DB	043H
	DB	04dH
	DB	033H
	DB	085H
	DB	045H
	DB	0f9H
	DB	02H
	DB	07fH
	DB	050H
	DB	03cH
	DB	09fH
	DB	0a8H
	DB	051H
	DB	0a3H
	DB	040H
	DB	08fH
	DB	092H
	DB	09dH
	DB	038H
	DB	0f5H
	DB	0bcH
	DB	0b6H
	DB	0daH
	DB	021H
	DB	010H
	DB	0ffH
	DB	0f3H
	DB	0d2H
	DB	0cdH
	DB	0cH
	DB	013H
	DB	0ecH
	DB	05fH
	DB	097H
	DB	044H
	DB	017H
	DB	0c4H
	DB	0a7H
	DB	07eH
	DB	03dH
	DB	064H
	DB	05dH
	DB	019H
	DB	073H
	DB	060H
	DB	081H
	DB	04fH
	DB	0dcH
	DB	022H
	DB	02aH
	DB	090H
	DB	088H
	DB	046H
	DB	0eeH
	DB	0b8H
	DB	014H
	DB	0deH
	DB	05eH
	DB	0bH
	DB	0dbH
	DB	0e0H
	DB	032H
	DB	03aH
	DB	0aH
	DB	049H
	DB	06H
	DB	024H
	DB	05cH
	DB	0c2H
	DB	0d3H
	DB	0acH
	DB	062H
	DB	091H
	DB	095H
	DB	0e4H
	DB	079H
	DB	0e7H
	DB	0c8H
	DB	037H
	DB	06dH
	DB	08dH
	DB	0d5H
	DB	04eH
	DB	0a9H
	DB	06cH
	DB	056H
	DB	0f4H
	DB	0eaH
	DB	065H
	DB	07aH
	DB	0aeH
	DB	08H
	DB	0baH
	DB	078H
	DB	025H
	DB	02eH
	DB	01cH
	DB	0a6H
	DB	0b4H
	DB	0c6H
	DB	0e8H
	DB	0ddH
	DB	074H
	DB	01fH
	DB	04bH
	DB	0bdH
	DB	08bH
	DB	08aH
	DB	070H
	DB	03eH
	DB	0b5H
	DB	066H
	DB	048H
	DB	03H
	DB	0f6H
	DB	0eH
	DB	061H
	DB	035H
	DB	057H
	DB	0b9H
	DB	086H
	DB	0c1H
	DB	01dH
	DB	09eH
	DB	0e1H
	DB	0f8H
	DB	098H
	DB	011H
	DB	069H
	DB	0d9H
	DB	08eH
	DB	094H
	DB	09bH
	DB	01eH
	DB	087H
	DB	0e9H
	DB	0ceH
	DB	055H
	DB	028H
	DB	0dfH
	DB	08cH
	DB	0a1H
	DB	089H
	DB	0dH
	DB	0bfH
	DB	0e6H
	DB	042H
	DB	068H
	DB	041H
	DB	099H
	DB	02dH
	DB	0fH
	DB	0b0H
	DB	054H
	DB	0bbH
	DB	016H
_Shift	DD	00H
	DD	01H
	DD	02H
	DD	03H
	DD	04H
	DD	05H
	DD	06H
	DD	07H
	DD	01H
	DD	03H
	DD	05H
	DD	07H
	DD	00H
	DD	02H
	DD	04H
	DD	06H
	DD	00H
	DD	01H
	DD	02H
	DD	03H
	DD	04H
	DD	05H
	DD	06H
	DD	0bH
	DD	01H
	DD	03H
	DD	05H
	DD	0bH
	DD	00H
	DD	02H
	DD	04H
	DD	06H
_DATA	ENDS
PUBLIC	_AddRoundConstant
; Function compile flags: /Ogspy
;	COMDAT _AddRoundConstant
_TEXT	SEGMENT
_x$ = 8							; size = 4
_columns$ = 12						; size = 4
_round$ = 16						; size = 1
_v$ = 20						; size = 4
_AddRoundConstant PROC					; COMDAT
; File c:\odzhan\tinycrypt\hash\groestl\groestl-ref.c
; Line 59
	push	ebp
	mov	ebp, esp
; Line 61
	mov	eax, DWORD PTR _v$[ebp]
	and	eax, 1
	sub	eax, 0
	push	esi
	push	edi
	je	SHORT $LN14@AddRoundCo
	dec	eax
	jne	SHORT $LN11@AddRoundCo
; Line 66
	mov	edi, DWORD PTR _columns$[ebp]
	mov	esi, DWORD PTR _x$[ebp]
	xor	ecx, ecx
	test	edi, edi
	jle	SHORT $LN7@AddRoundCo
$LL9@AddRoundCo:
; Line 67
	push	7
	lea	eax, DWORD PTR [ecx+esi]
	pop	edx
$LL6@AddRoundCo:
; Line 68
	not	BYTE PTR [eax]
	add	eax, 16					; 00000010H
	dec	edx
	jne	SHORT $LL6@AddRoundCo
; Line 66
	inc	ecx
	cmp	ecx, edi
	jl	SHORT $LL9@AddRoundCo
$LN7@AddRoundCo:
; Line 69
	xor	eax, eax
	test	edi, edi
	jle	SHORT $LN11@AddRoundCo
$LL3@AddRoundCo:
	mov	dl, BYTE PTR [esi+eax+112]
	mov	cl, al
	shl	cl, 4
	not	dl
	xor	cl, dl
	xor	cl, BYTE PTR _round$[ebp]
	inc	eax
	mov	BYTE PTR [esi+eax+111], cl
	cmp	eax, edi
	jl	SHORT $LL3@AddRoundCo
; Line 70
	jmp	SHORT $LN11@AddRoundCo
$LN14@AddRoundCo:
; Line 63
	xor	ecx, ecx
	cmp	DWORD PTR _columns$[ebp], ecx
	jle	SHORT $LN11@AddRoundCo
$LL13@AddRoundCo:
	mov	eax, DWORD PTR _x$[ebp]
	mov	dl, cl
	shl	dl, 4
	xor	dl, BYTE PTR [eax+ecx]
	xor	dl, BYTE PTR _round$[ebp]
	mov	BYTE PTR [eax+ecx], dl
	inc	ecx
	cmp	ecx, DWORD PTR _columns$[ebp]
	jl	SHORT $LL13@AddRoundCo
$LN11@AddRoundCo:
	pop	edi
	pop	esi
; Line 72
	pop	ebp
	ret	0
_AddRoundConstant ENDP
_TEXT	ENDS
PUBLIC	_SubBytes
; Function compile flags: /Ogspy
;	COMDAT _SubBytes
_TEXT	SEGMENT
_x$ = 8							; size = 4
_columns$ = 12						; size = 4
_SubBytes PROC						; COMDAT
; Line 78
	mov	ecx, DWORD PTR _x$[esp-4]
	push	esi
	push	8
	pop	esi
$LL6@SubBytes:
; Line 79
	xor	eax, eax
	cmp	DWORD PTR _columns$[esp], eax
	jle	SHORT $LN5@SubBytes
$LL3@SubBytes:
; Line 80
	movzx	edx, BYTE PTR [ecx+eax]
	mov	dl, BYTE PTR _S[edx]
	mov	BYTE PTR [ecx+eax], dl
	inc	eax
	cmp	eax, DWORD PTR _columns$[esp]
	jl	SHORT $LL3@SubBytes
$LN5@SubBytes:
; Line 78
	add	ecx, 16					; 00000010H
	dec	esi
	jne	SHORT $LL6@SubBytes
	pop	esi
; Line 81
	ret	0
_SubBytes ENDP
_TEXT	ENDS
PUBLIC	_ShiftBytes
; Function compile flags: /Ogspy
;	COMDAT _ShiftBytes
_TEXT	SEGMENT
_temp$ = -16						; size = 16
_x$ = 8							; size = 4
_columns$ = 12						; size = 4
tv270 = 16						; size = 4
_v$ = 16						; size = 4
_ShiftBytes PROC					; COMDAT
; Line 85
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
; Line 86
	mov	ecx, DWORD PTR _v$[ebp]
	mov	eax, ecx
	cdq
	sub	eax, edx
	sar	eax, 1
	and	ecx, 1
	lea	eax, DWORD PTR [ecx+eax*2]
	push	ebx
	shl	eax, 5
	add	eax, OFFSET _Shift
	push	esi
	push	edi
	xor	ebx, ebx
	mov	DWORD PTR tv270[ebp], eax
$LL13@ShiftBytes:
; Line 91
	xor	ecx, ecx
	cmp	DWORD PTR _columns$[ebp], ecx
	jle	SHORT $LN1@ShiftBytes
	mov	eax, DWORD PTR tv270[ebp]
	mov	esi, DWORD PTR [eax]
$LL3@ShiftBytes:
; Line 92
	mov	eax, esi
	cdq
	idiv	DWORD PTR _columns$[ebp]
	mov	eax, DWORD PTR _x$[ebp]
	add	edx, ebx
	mov	al, BYTE PTR [edx+eax]
	mov	BYTE PTR _temp$[ebp+ecx], al
	inc	ecx
	inc	esi
	cmp	ecx, DWORD PTR _columns$[ebp]
	jl	SHORT $LL3@ShiftBytes
$LN1@ShiftBytes:
; Line 94
	mov	eax, DWORD PTR _x$[ebp]
	mov	ecx, DWORD PTR _columns$[ebp]
	add	DWORD PTR tv270[ebp], 4
	lea	edi, DWORD PTR [ebx+eax]
	add	ebx, 16					; 00000010H
	lea	esi, DWORD PTR _temp$[ebp]
	rep movsb
	cmp	ebx, 128				; 00000080H
	jl	SHORT $LL13@ShiftBytes
	pop	edi
	pop	esi
	pop	ebx
; Line 100
	leave
	ret	0
_ShiftBytes ENDP
_TEXT	ENDS
PUBLIC	_MixBytes
; Function compile flags: /Ogspy
;	COMDAT _MixBytes
_TEXT	SEGMENT
_temp$ = -48						; size = 8
tv1317 = -40						; size = 4
tv89 = -36						; size = 4
tv147 = -32						; size = 4
tv174 = -28						; size = 4
tv268 = -24						; size = 4
tv355 = -20						; size = 4
tv389 = -16						; size = 4
_i$ = -12						; size = 4
tv1243 = -6						; size = 1
tv1378 = -5						; size = 1
tv1428 = -4						; size = 1
tv1457 = -3						; size = 1
tv1478 = -2						; size = 1
tv1245 = -1						; size = 1
_x$ = 8							; size = 4
_columns$ = 12						; size = 4
_MixBytes PROC						; COMDAT
; Line 103
	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H
; Line 107
	and	DWORD PTR _i$[ebp], 0
	cmp	DWORD PTR _columns$[ebp], 0
	jle	$LN7@MixBytes
	push	ebx
	lea	eax, DWORD PTR _temp$[ebp]
	push	esi
	sub	eax, 7
	push	edi
	mov	edi, DWORD PTR _x$[ebp]
	mov	DWORD PTR tv1317[ebp], eax
$LL60@MixBytes:
; Line 108
	push	7
	pop	ecx
$LL61@MixBytes:
; Line 117
	lea	eax, DWORD PTR [ecx-7]
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN62@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN62@MixBytes:
	mov	ebx, DWORD PTR _i$[ebp]
	shl	eax, 4
	add	eax, ebx
	mov	al, BYTE PTR [eax+edi]
	push	27					; 0000001bH
	test	al, al
	pop	esi
	movzx	eax, al
	jns	SHORT $LN12@MixBytes
	add	eax, eax
	xor	eax, esi
	jmp	SHORT $LN70@MixBytes
$LN12@MixBytes:
	add	eax, eax
$LN70@MixBytes:
	mov	DWORD PTR tv89[ebp], eax
	lea	edx, DWORD PTR [ecx-4]
	lea	eax, DWORD PTR [edx-2]
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN63@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN63@MixBytes:
	shl	eax, 4
	add	eax, ebx
	mov	al, BYTE PTR [eax+edi]
	test	al, al
	movzx	eax, al
	jns	SHORT $LN14@MixBytes
	add	eax, eax
	xor	eax, esi
	jmp	SHORT $LN71@MixBytes
$LN14@MixBytes:
	add	eax, eax
$LN71@MixBytes:
	mov	DWORD PTR tv147[ebp], eax
	lea	eax, DWORD PTR [ecx-5]
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN64@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN64@MixBytes:
	shl	eax, 4
	add	eax, ebx
	mov	al, BYTE PTR [eax+edi]
	mov	BYTE PTR tv1378[ebp], al
	test	al, al
	movzx	eax, al
	jns	SHORT $LN16@MixBytes
	add	eax, eax
	xor	eax, esi
	jmp	SHORT $LN72@MixBytes
$LN16@MixBytes:
	add	eax, eax
$LN72@MixBytes:
	and	edx, -2147483641			; 80000007H
	mov	DWORD PTR tv174[ebp], eax
	jns	SHORT $LN65@MixBytes
	dec	edx
	or	edx, -8					; fffffff8H
	inc	edx
$LN65@MixBytes:
	shl	edx, 4
	add	edx, ebx
	mov	al, BYTE PTR [edx+edi]
	mov	bl, al
	movzx	eax, al
	shr	bl, 7
	add	eax, eax
	mov	edx, eax
	test	bl, bl
	je	SHORT $LN19@MixBytes
	xor	edx, esi
$LN19@MixBytes:
	test	dl, dl
	jns	SHORT $LN24@MixBytes
	test	bl, bl
	je	SHORT $LN20@MixBytes
	xor	eax, esi
$LN20@MixBytes:
	movzx	eax, al
	add	eax, eax
	xor	eax, esi
	jmp	SHORT $LN73@MixBytes
$LN24@MixBytes:
	test	bl, bl
	je	SHORT $LN22@MixBytes
	xor	eax, esi
$LN22@MixBytes:
	movzx	eax, al
	add	eax, eax
$LN73@MixBytes:
	mov	DWORD PTR tv268[ebp], eax
	lea	eax, DWORD PTR [ecx-3]
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN66@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN66@MixBytes:
	shl	eax, 4
	add	eax, DWORD PTR _i$[ebp]
	mov	al, BYTE PTR [eax+edi]
	mov	bl, al
	mov	BYTE PTR tv1428[ebp], al
	movzx	eax, al
	shr	bl, 7
	add	eax, eax
	mov	edx, eax
	test	bl, bl
	je	SHORT $LN27@MixBytes
	xor	edx, esi
$LN27@MixBytes:
	test	dl, dl
	jns	SHORT $LN32@MixBytes
	test	bl, bl
	je	SHORT $LN28@MixBytes
	xor	eax, esi
$LN28@MixBytes:
	movzx	eax, al
	add	eax, eax
	xor	eax, esi
	jmp	SHORT $LN74@MixBytes
$LN32@MixBytes:
	test	bl, bl
	je	SHORT $LN30@MixBytes
	xor	eax, esi
$LN30@MixBytes:
	movzx	eax, al
	add	eax, eax
$LN74@MixBytes:
	mov	DWORD PTR tv355[ebp], eax
	lea	eax, DWORD PTR [ecx-2]
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN67@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN67@MixBytes:
	shl	eax, 4
	add	eax, DWORD PTR _i$[ebp]
	mov	al, BYTE PTR [eax+edi]
	mov	BYTE PTR tv1457[ebp], al
	test	al, al
	movzx	eax, al
	jns	SHORT $LN34@MixBytes
	add	eax, eax
	xor	eax, esi
	jmp	SHORT $LN75@MixBytes
$LN34@MixBytes:
	add	eax, eax
$LN75@MixBytes:
	mov	DWORD PTR tv389[ebp], eax
	lea	eax, DWORD PTR [ecx-1]
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN68@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN68@MixBytes:
	shl	eax, 4
	add	eax, DWORD PTR _i$[ebp]
	mov	al, BYTE PTR [eax+edi]
	mov	bl, al
	mov	BYTE PTR tv1478[ebp], al
	movzx	eax, al
	shr	bl, 7
	add	eax, eax
	mov	edx, eax
	test	bl, bl
	je	SHORT $LN37@MixBytes
	xor	edx, esi
$LN37@MixBytes:
	test	dl, dl
	jns	SHORT $LN42@MixBytes
	test	bl, bl
	je	SHORT $LN38@MixBytes
	xor	eax, esi
$LN38@MixBytes:
	movzx	ebx, al
	add	ebx, ebx
	xor	ebx, esi
	jmp	SHORT $LN43@MixBytes
$LN42@MixBytes:
	test	bl, bl
	je	SHORT $LN40@MixBytes
	xor	eax, esi
$LN40@MixBytes:
	movzx	ebx, al
	add	ebx, ebx
$LN43@MixBytes:
	mov	eax, ecx
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN69@MixBytes
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN69@MixBytes:
	shl	eax, 4
	add	eax, DWORD PTR _i$[ebp]
	mov	al, BYTE PTR [eax+edi]
	movzx	esi, al
	mov	dl, al
	shr	dl, 7
	add	esi, esi
	mov	BYTE PTR tv1243[ebp], al
	mov	BYTE PTR tv1245[ebp], dl
	mov	eax, esi
	test	dl, dl
	je	SHORT $LN45@MixBytes
	xor	eax, 27					; 0000001bH
$LN45@MixBytes:
	test	al, al
	mov	eax, esi
	jns	SHORT $LN50@MixBytes
	test	dl, dl
	je	SHORT $LN47@MixBytes
	xor	eax, 27					; 0000001bH
$LN47@MixBytes:
	movzx	edx, al
	add	edx, edx
	xor	edx, 27					; 0000001bH
	jmp	SHORT $LN51@MixBytes
$LN50@MixBytes:
	test	dl, dl
	je	SHORT $LN49@MixBytes
	xor	eax, 27					; 0000001bH
$LN49@MixBytes:
	movzx	edx, al
	add	edx, edx
$LN51@MixBytes:
	cmp	BYTE PTR tv1245[ebp], 0
	je	SHORT $LN52@MixBytes
	xor	esi, 27					; 0000001bH
$LN52@MixBytes:
	mov	eax, esi
	xor	al, dl
	xor	al, bl
	xor	al, BYTE PTR tv1478[ebp]
	mov	edx, DWORD PTR tv1317[ebp]
	xor	al, BYTE PTR tv1457[ebp]
	xor	al, BYTE PTR tv1428[ebp]
	xor	al, BYTE PTR tv389[ebp]
	xor	al, BYTE PTR tv355[ebp]
	xor	al, BYTE PTR tv1378[ebp]
	xor	al, BYTE PTR tv268[ebp]
	xor	al, BYTE PTR tv1243[ebp]
	xor	al, BYTE PTR tv174[ebp]
	xor	al, BYTE PTR tv147[ebp]
	xor	al, BYTE PTR tv89[ebp]
	mov	BYTE PTR [edx+ecx], al
	inc	ecx
	lea	eax, DWORD PTR [ecx-7]
	cmp	eax, 8
	jl	$LL61@MixBytes
; Line 119
	mov	esi, DWORD PTR _i$[ebp]
	xor	ecx, ecx
	lea	eax, DWORD PTR [esi+edi]
$LL3@MixBytes:
; Line 120
	mov	dl, BYTE PTR _temp$[ebp+ecx]
	mov	BYTE PTR [eax], dl
	inc	ecx
	add	eax, 16					; 00000010H
	cmp	ecx, 8
	jl	SHORT $LL3@MixBytes
; Line 107
	inc	esi
	mov	DWORD PTR _i$[ebp], esi
	cmp	esi, DWORD PTR _columns$[ebp]
	jl	$LL60@MixBytes
	pop	edi
	pop	esi
	pop	ebx
$LN7@MixBytes:
; Line 123
	leave
	ret	0
_MixBytes ENDP
_TEXT	ENDS
PUBLIC	_P
; Function compile flags: /Ogspy
;	COMDAT _P
_TEXT	SEGMENT
_i$ = 8							; size = 1
_ctx$ = 8						; size = 4
_x$ = 12						; size = 4
_P	PROC						; COMDAT
; Line 126
	push	ebp
	mov	ebp, esp
	push	esi
; Line 128
	mov	esi, DWORD PTR _ctx$[ebp]
	push	edi
	mov	edi, DWORD PTR [esi+276]
	sub	edi, 8
	neg	edi
	sbb	edi, edi
	and	edi, 2
; Line 129
	cmp	DWORD PTR [esi+280], 0
	mov	BYTE PTR _i$[ebp], 0
	jle	SHORT $LN1@P
	push	ebx
	mov	ebx, DWORD PTR _x$[ebp]
$LL3@P:
; Line 130
	push	edi
	push	DWORD PTR _i$[ebp]
	push	DWORD PTR [esi+276]
	push	ebx
	call	_AddRoundConstant
; Line 131
	push	DWORD PTR [esi+276]
	push	ebx
	call	_SubBytes
; Line 132
	push	edi
	push	DWORD PTR [esi+276]
	push	ebx
	call	_ShiftBytes
; Line 133
	push	DWORD PTR [esi+276]
	push	ebx
	call	_MixBytes
	add	esp, 44					; 0000002cH
	inc	BYTE PTR _i$[ebp]
	movzx	eax, BYTE PTR _i$[ebp]
	cmp	eax, DWORD PTR [esi+280]
	jl	SHORT $LL3@P
	pop	ebx
$LN1@P:
	pop	edi
	pop	esi
; Line 135
	pop	ebp
	ret	0
_P	ENDP
_TEXT	ENDS
PUBLIC	_Q
; Function compile flags: /Ogspy
;	COMDAT _Q
_TEXT	SEGMENT
_i$ = 8							; size = 1
_ctx$ = 8						; size = 4
_x$ = 12						; size = 4
_Q	PROC						; COMDAT
; Line 138
	push	ebp
	mov	ebp, esp
	push	ebx
; Line 140
	xor	ebx, ebx
	push	esi
	mov	esi, DWORD PTR _ctx$[ebp]
	cmp	DWORD PTR [esi+276], 8
; Line 141
	mov	BYTE PTR _i$[ebp], 0
	setne	bl
	cmp	DWORD PTR [esi+280], 0
	lea	ebx, DWORD PTR [ebx+ebx+1]
	jle	SHORT $LN1@Q
	push	edi
	mov	edi, DWORD PTR _x$[ebp]
$LL3@Q:
; Line 142
	push	ebx
	push	DWORD PTR _i$[ebp]
	push	DWORD PTR [esi+276]
	push	edi
	call	_AddRoundConstant
; Line 143
	push	DWORD PTR [esi+276]
	push	edi
	call	_SubBytes
; Line 144
	push	ebx
	push	DWORD PTR [esi+276]
	push	edi
	call	_ShiftBytes
; Line 145
	push	DWORD PTR [esi+276]
	push	edi
	call	_MixBytes
	add	esp, 44					; 0000002cH
	inc	BYTE PTR _i$[ebp]
	movzx	eax, BYTE PTR _i$[ebp]
	cmp	eax, DWORD PTR [esi+280]
	jl	SHORT $LL3@Q
	pop	edi
$LN1@Q:
	pop	esi
	pop	ebx
; Line 147
	pop	ebp
	ret	0
_Q	ENDP
_TEXT	ENDS
PUBLIC	_Transform
; Function compile flags: /Ogspy
;	COMDAT _Transform
_TEXT	SEGMENT
_temp2$ = -156						; size = 128
_temp1$ = -28						; size = 128
tv308 = 100						; size = 4
_i$ = 104						; size = 4
tv370 = 116						; size = 4
_ctx$ = 116						; size = 4
_input$ = 120						; size = 4
_msglen$ = 124						; size = 4
_Transform PROC						; COMDAT
; Line 152
	push	ebp
	lea	ebp, DWORD PTR [esp-108]
; Line 158
	mov	eax, DWORD PTR _msglen$[ebp]
	sub	esp, 264				; 00000108H
	push	esi
	mov	esi, DWORD PTR _ctx$[ebp]
	cmp	eax, DWORD PTR [esi+284]
	jb	$LN13@Transform
	push	ebx
	push	edi
$LL15@Transform:
; Line 161
	and	DWORD PTR _i$[ebp], 0
	and	DWORD PTR tv370[ebp], 0
$LL29@Transform:
; Line 162
	xor	edi, edi
	cmp	DWORD PTR [esi+276], edi
	jle	SHORT $LN11@Transform
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, DWORD PTR _input$[ebp]
; Line 164
	mov	DWORD PTR tv308[ebp], esi
	lea	eax, DWORD PTR _temp1$[ebp]
	sub	DWORD PTR tv308[ebp], eax
$LL28@Transform:
; Line 163
	mov	eax, DWORD PTR tv370[ebp]
	mov	cl, BYTE PTR [edx]
	mov	ebx, DWORD PTR tv308[ebp]
	add	eax, edi
	lea	eax, DWORD PTR _temp1$[ebp+eax]
	mov	bl, BYTE PTR [eax+ebx]
	xor	bl, cl
	mov	BYTE PTR [eax], bl
	mov	eax, DWORD PTR tv370[ebp]
	add	eax, edi
	inc	edi
	add	edx, 8
; Line 164
	mov	BYTE PTR _temp2$[ebp+eax], cl
	cmp	edi, DWORD PTR [esi+276]
	jl	SHORT $LL28@Transform
$LN11@Transform:
; Line 161
	inc	DWORD PTR _i$[ebp]
	add	DWORD PTR tv370[ebp], 16		; 00000010H
	cmp	DWORD PTR _i$[ebp], 8
	jl	SHORT $LL29@Transform
; Line 168
	lea	eax, DWORD PTR _temp1$[ebp]
	push	eax
	push	esi
	call	_P
; Line 169
	lea	eax, DWORD PTR _temp2$[ebp]
	push	eax
	push	esi
	call	_Q
	add	esp, 16					; 00000010H
	xor	edi, edi
$LL6@Transform:
; Line 173
	xor	ecx, ecx
	cmp	DWORD PTR [esi+276], ecx
	jle	SHORT $LN5@Transform
	mov	eax, edi
$LL3@Transform:
; Line 174
	mov	dl, BYTE PTR _temp2$[ebp+eax]
	xor	dl, BYTE PTR _temp1$[ebp+eax]
	xor	BYTE PTR [eax+esi], dl
	inc	ecx
	inc	eax
	cmp	ecx, DWORD PTR [esi+276]
	jl	SHORT $LL3@Transform
$LN5@Transform:
; Line 172
	add	edi, 16					; 00000010H
	cmp	edi, 128				; 00000080H
	jl	SHORT $LL6@Transform
; Line 179
	add	DWORD PTR [esi+128], 1
	mov	eax, DWORD PTR [esi+284]
	adc	DWORD PTR [esi+132], 0
	sub	DWORD PTR _msglen$[ebp], eax
	add	DWORD PTR _input$[ebp], eax
	mov	eax, DWORD PTR _msglen$[ebp]
	cmp	eax, DWORD PTR [esi+284]
	jae	$LL15@Transform
	pop	edi
	pop	ebx
$LN13@Transform:
	pop	esi
; Line 181
	add	ebp, 108				; 0000006cH
	leave
	ret	0
_Transform ENDP
_TEXT	ENDS
PUBLIC	_OutputTransformation
; Function compile flags: /Ogspy
;	COMDAT _OutputTransformation
_TEXT	SEGMENT
_temp$ = -16						; size = 128
tv255 = 112						; size = 4
tv86 = 112						; size = 4
_ctx$ = 124						; size = 4
_OutputTransformation PROC				; COMDAT
; Line 184
	push	ebp
	lea	ebp, DWORD PTR [esp-116]
	sub	esp, 132				; 00000084H
	push	ebx
; Line 189
	mov	ebx, DWORD PTR _ctx$[ebp]
	lea	eax, DWORD PTR _temp$[ebp]
	push	esi
	mov	edx, ebx
	mov	ecx, eax
	push	edi
	sub	edx, ecx
	mov	DWORD PTR tv86[ebp], 8
$LL9@OutputTran:
; Line 190
	lea	esi, DWORD PTR [edx+eax]
	mov	edi, eax
	push	8
	pop	ecx
	add	eax, 16					; 00000010H
	dec	DWORD PTR tv86[ebp]
	rep movsb
	jne	SHORT $LL9@OutputTran
; Line 198
	lea	eax, DWORD PTR _temp$[ebp]
	push	eax
	push	ebx
	call	_P
	pop	ecx
	pop	ecx
	mov	ecx, DWORD PTR [ebx+276]
	mov	edx, ebx
	mov	DWORD PTR tv255[ebp], 8
$LL6@OutputTran:
; Line 202
	xor	edi, edi
	test	ecx, ecx
	jle	SHORT $LN5@OutputTran
	lea	esi, DWORD PTR _temp$[ebp]
	mov	eax, edx
	sub	esi, ebx
$LL3@OutputTran:
; Line 203
	mov	cl, BYTE PTR [esi+eax]
	xor	BYTE PTR [eax], cl
	mov	ecx, DWORD PTR [ebx+276]
	inc	edi
	inc	eax
	cmp	edi, ecx
	jl	SHORT $LL3@OutputTran
$LN5@OutputTran:
; Line 201
	add	edx, 16					; 00000010H
	dec	DWORD PTR tv255[ebp]
	jne	SHORT $LL6@OutputTran
	pop	edi
	pop	esi
	pop	ebx
; Line 206
	add	ebp, 116				; 00000074H
	leave
	ret	0
_OutputTransformation ENDP
_TEXT	ENDS
PUBLIC	_Init
; Function compile flags: /Ogspy
;	COMDAT _Init
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_hashbitlen$ = 12					; size = 4
_Init	PROC						; COMDAT
; Line 211
	push	ebx
; Line 214
	mov	ebx, DWORD PTR _hashbitlen$[esp]
	test	ebx, ebx
	jle	$LN12@Init
	mov	eax, ebx
	and	eax, -2147483641			; 80000007H
	jns	SHORT $LN22@Init
	dec	eax
	or	eax, -8					; fffffff8H
	inc	eax
$LN22@Init:
	jne	$LN12@Init
	cmp	ebx, 512				; 00000200H
	jg	$LN12@Init
; Line 218
	mov	eax, DWORD PTR _ctx$[esp]
	push	esi
	push	edi
	push	64					; 00000040H
	pop	edi
	cmp	ebx, 256				; 00000100H
	jg	SHORT $LN11@Init
	mov	DWORD PTR [eax+280], 10			; 0000000aH
; Line 219
	mov	DWORD PTR [eax+276], 8
; Line 220
	mov	DWORD PTR [eax+284], edi
; Line 222
	jmp	SHORT $LN10@Init
$LN11@Init:
; Line 223
	mov	DWORD PTR [eax+280], 14			; 0000000eH
; Line 224
	mov	DWORD PTR [eax+276], 16			; 00000010H
; Line 225
	mov	DWORD PTR [eax+284], 128		; 00000080H
$LN10@Init:
; Line 229
	push	8
	mov	edx, eax
	pop	esi
$LL9@Init:
; Line 230
	xor	ecx, ecx
	cmp	DWORD PTR [eax+276], ecx
	jle	SHORT $LN8@Init
$LL6@Init:
; Line 231
	mov	BYTE PTR [edx+ecx], 0
	inc	ecx
	cmp	ecx, DWORD PTR [eax+276]
	jl	SHORT $LL6@Init
$LN8@Init:
; Line 229
	add	edx, 16					; 00000010H
	dec	esi
	jne	SHORT $LL9@Init
; Line 236
	push	24					; 00000018H
	mov	DWORD PTR [eax+136], ebx
	pop	esi
$LL3@Init:
; Line 238
	mov	ecx, esi
	mov	edx, ebx
	sar	edx, cl
	mov	ecx, DWORD PTR [eax+276]
	add	ecx, edi
	sub	esi, 8
	add	edi, 16					; 00000010H
	mov	BYTE PTR [ecx+eax-1], dl
	cmp	esi, -8					; fffffff8H
	jg	SHORT $LL3@Init
; Line 242
	xor	ecx, ecx
	pop	edi
	pop	esi
	mov	DWORD PTR [eax+268], ecx
; Line 243
	mov	DWORD PTR [eax+128], ecx
	mov	DWORD PTR [eax+132], ecx
; Line 244
	mov	DWORD PTR [eax+272], ecx
; Line 246
	xor	eax, eax
	pop	ebx
; Line 247
	ret	0
$LN12@Init:
; Line 215
	push	2
	pop	eax
	pop	ebx
; Line 247
	ret	0
_Init	ENDP
_TEXT	ENDS
PUBLIC	_Update
; Function compile flags: /Ogspy
;	COMDAT _Update
_TEXT	SEGMENT
_rem$ = -4						; size = 4
tv222 = 8						; size = 4
_ctx$ = 8						; size = 4
_input$ = 12						; size = 4
_msglen$ = 16						; size = 4
_databitlen$ = 16					; size = 4
_Update	PROC						; COMDAT
; Line 251
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 253
	mov	eax, DWORD PTR _databitlen$[ebp]
	push	esi
; Line 256
	mov	esi, DWORD PTR _ctx$[ebp]
	mov	ecx, eax
	push	edi
	xor	edi, edi
	shr	ecx, 3
	and	eax, 7
	mov	DWORD PTR _msglen$[ebp], ecx
	mov	DWORD PTR _rem$[ebp], eax
	cmp	DWORD PTR [esi+272], edi
	je	SHORT $LN11@Update
	xor	eax, eax
	inc	eax
	jmp	$LN12@Update
$LN11@Update:
; Line 259
	mov	eax, DWORD PTR [esi+268]
	push	ebx
	mov	ebx, DWORD PTR _input$[ebp]
	cmp	eax, edi
	je	SHORT $LN10@Update
	jmp	SHORT $LN20@Update
$LL18@Update:
; Line 263
	cmp	edi, ecx
	jae	SHORT $LN7@Update
; Line 264
	mov	eax, DWORD PTR [esi+268]
	mov	dl, BYTE PTR [edi+ebx]
	mov	BYTE PTR [eax+esi+140], dl
	inc	edi
	inc	DWORD PTR [esi+268]
	mov	eax, DWORD PTR [esi+268]
$LN20@Update:
; Line 263
	cmp	eax, DWORD PTR [esi+284]
	jl	SHORT $LL18@Update
$LN7@Update:
; Line 267
	mov	eax, DWORD PTR [esi+268]
	mov	ecx, DWORD PTR [esi+284]
	cmp	eax, ecx
	jge	SHORT $LN6@Update
; Line 269
	mov	ecx, DWORD PTR _rem$[ebp]
	test	ecx, ecx
	je	$LN1@Update
; Line 271
	mov	DWORD PTR [esi+272], ecx
; Line 274
	jmp	SHORT $LN21@Update
$LN6@Update:
; Line 278
	and	DWORD PTR [esi+268], 0
; Line 279
	push	ecx
	lea	eax, DWORD PTR [esi+140]
	push	eax
	push	esi
	call	_Transform
	mov	ecx, DWORD PTR _msglen$[ebp]
	add	esp, 12					; 0000000cH
$LN10@Update:
; Line 283
	sub	ecx, edi
	push	ecx
	lea	eax, DWORD PTR [edi+ebx]
	push	eax
	push	esi
	mov	DWORD PTR tv222[ebp], ecx
	call	_Transform
; Line 284
	mov	ecx, DWORD PTR [esi+284]
	mov	eax, DWORD PTR tv222[ebp]
	xor	edx, edx
	div	ecx
	add	esp, 12					; 0000000cH
	imul	eax, ecx
	add	edi, eax
	jmp	SHORT $LN22@Update
$LL4@Update:
; Line 288
	mov	cl, BYTE PTR [edi+ebx]
	mov	eax, DWORD PTR [esi+268]
	mov	BYTE PTR [eax+esi+140], cl
	inc	edi
	inc	DWORD PTR [esi+268]
$LN22@Update:
; Line 287
	cmp	edi, DWORD PTR _msglen$[ebp]
	jb	SHORT $LL4@Update
; Line 291
	mov	eax, DWORD PTR _rem$[ebp]
	test	eax, eax
	je	SHORT $LN1@Update
; Line 292
	mov	DWORD PTR [esi+272], eax
; Line 293
	mov	eax, DWORD PTR [esi+268]
$LN21@Update:
	mov	cl, BYTE PTR [edi+ebx]
	mov	BYTE PTR [eax+esi+140], cl
	inc	DWORD PTR [esi+268]
$LN1@Update:
; Line 295
	xor	eax, eax
	pop	ebx
$LN12@Update:
	pop	edi
	pop	esi
; Line 296
	leave
	ret	0
_Update	ENDP
_TEXT	ENDS
PUBLIC	_Final
; Function compile flags: /Ogspy
;	COMDAT _Final
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_output$ = 12						; size = 4
_Final	PROC						; COMDAT
; Line 301
	push	ebx
	push	esi
; Line 302
	mov	esi, DWORD PTR _ctx$[esp+4]
	mov	eax, DWORD PTR [esi+136]
	cdq
	and	edx, 7
	lea	ebx, DWORD PTR [edx+eax]
; Line 306
	mov	eax, DWORD PTR [esi+268]
	push	edi
	mov	edi, DWORD PTR [esi+272]
	sar	ebx, 3
	test	edi, edi
	je	SHORT $LN21@Final
	mov	ecx, edi
	mov	dl, 1
	shl	dl, cl
	push	8
	pop	ecx
	sub	ecx, edi
	dec	dl
	shl	dl, cl
	lea	eax, DWORD PTR [esi+eax+139]
; Line 307
	push	7
	pop	ecx
	and	BYTE PTR [eax], dl
	sub	ecx, DWORD PTR [esi+272]
	mov	eax, DWORD PTR [esi+268]
	mov	dl, 1
	shl	dl, cl
	lea	eax, DWORD PTR [esi+eax+139]
	xor	BYTE PTR [eax], dl
	jmp	SHORT $LN20@Final
$LN21@Final:
; Line 309
	mov	BYTE PTR [esi+eax+140], 128		; 00000080H
	inc	DWORD PTR [esi+268]
$LN20@Final:
; Line 311
	mov	eax, DWORD PTR [esi+284]
	mov	ecx, DWORD PTR [esi+268]
	lea	edx, DWORD PTR [eax-8]
	cmp	ecx, edx
	jle	SHORT $LN25@Final
; Line 313
	cmp	ecx, eax
	jge	SHORT $LN17@Final
$LL18@Final:
; Line 314
	mov	eax, DWORD PTR [esi+268]
	mov	BYTE PTR [esi+eax+140], 0
	inc	DWORD PTR [esi+268]
	mov	eax, DWORD PTR [esi+268]
	cmp	eax, DWORD PTR [esi+284]
	jl	SHORT $LL18@Final
$LN17@Final:
; Line 316
	push	DWORD PTR [esi+284]
	lea	eax, DWORD PTR [esi+140]
	push	eax
	push	esi
	call	_Transform
	add	esp, 12					; 0000000cH
; Line 317
	and	DWORD PTR [esi+268], 0
; Line 319
	jmp	SHORT $LN25@Final
$LL16@Final:
; Line 320
	mov	eax, DWORD PTR [esi+268]
	mov	BYTE PTR [esi+eax+140], 0
	inc	DWORD PTR [esi+268]
$LN25@Final:
; Line 319
	mov	eax, DWORD PTR [esi+284]
	sub	eax, 8
	cmp	DWORD PTR [esi+268], eax
	jl	SHORT $LL16@Final
; Line 324
	add	DWORD PTR [esi+128], 1
; Line 325
	mov	eax, DWORD PTR [esi+284]
; Line 326
	lea	ecx, DWORD PTR [eax-8]
	adc	DWORD PTR [esi+132], 0
	mov	DWORD PTR [esi+268], eax
	cmp	eax, ecx
	jle	SHORT $LN13@Final
$LL14@Final:
; Line 327
	dec	DWORD PTR [esi+268]
	mov	cl, BYTE PTR [esi+128]
	mov	eax, DWORD PTR [esi+268]
	mov	BYTE PTR [eax+esi+140], cl
; Line 328
	mov	eax, DWORD PTR [esi+128]
	mov	ecx, DWORD PTR [esi+132]
	shrd	eax, ecx, 8
	shr	ecx, 8
	mov	DWORD PTR [esi+128], eax
	mov	DWORD PTR [esi+132], ecx
	mov	eax, DWORD PTR [esi+284]
	sub	eax, 8
	cmp	DWORD PTR [esi+268], eax
	jg	SHORT $LL14@Final
$LN13@Final:
; Line 332
	push	DWORD PTR [esi+284]
	lea	eax, DWORD PTR [esi+140]
	push	eax
	push	esi
	call	_Transform
; Line 334
	push	esi
	call	_OutputTransformation
; Line 338
	mov	eax, DWORD PTR [esi+284]
	mov	ecx, eax
	sub	ecx, ebx
	add	esp, 16					; 00000010H
	cmp	ecx, eax
	jge	SHORT $LN10@Final
; Line 332
	mov	ebx, DWORD PTR _output$[esp+8]
$LL12@Final:
; Line 339
	mov	edi, ecx
	and	edi, -2147483641			; 80000007H
	jns	SHORT $LN38@Final
	dec	edi
	or	edi, -8					; fffffff8H
	inc	edi
$LN38@Final:
	mov	eax, ecx
	cdq
	and	edx, 7
	add	eax, edx
	shl	edi, 4
	sar	eax, 3
	add	edi, esi
	mov	al, BYTE PTR [eax+edi]
	mov	BYTE PTR [ebx], al
	inc	ecx
	inc	ebx
	cmp	ecx, DWORD PTR [esi+284]
	jl	SHORT $LL12@Final
$LN10@Final:
; Line 343
	push	8
	mov	ecx, esi
	pop	edx
$LL9@Final:
; Line 344
	xor	eax, eax
	cmp	DWORD PTR [esi+276], eax
	jle	SHORT $LN8@Final
$LL6@Final:
; Line 345
	mov	BYTE PTR [ecx+eax], 0
	inc	eax
	cmp	eax, DWORD PTR [esi+276]
	jl	SHORT $LL6@Final
$LN8@Final:
; Line 343
	add	ecx, 16					; 00000010H
	dec	edx
	jne	SHORT $LL9@Final
; Line 348
	xor	eax, eax
	cmp	DWORD PTR [esi+284], eax
	jle	SHORT $LN1@Final
$LL3@Final:
; Line 349
	mov	BYTE PTR [esi+eax+140], 0
	inc	eax
	cmp	eax, DWORD PTR [esi+284]
	jl	SHORT $LL3@Final
$LN1@Final:
	pop	edi
	pop	esi
; Line 352
	xor	eax, eax
	pop	ebx
; Line 353
	ret	0
_Final	ENDP
_TEXT	ENDS
PUBLIC	_Hash
; Function compile flags: /Ogspy
;	COMDAT _Hash
_TEXT	SEGMENT
_ctx$ = -288						; size = 288
_hashbitlen$ = 8					; size = 4
_data$ = 12						; size = 4
_databitlen$ = 16					; size = 4
_hashval$ = 20						; size = 4
_Hash	PROC						; COMDAT
; Line 359
	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
; Line 364
	push	DWORD PTR _hashbitlen$[ebp]
	lea	eax, DWORD PTR _ctx$[ebp]
	push	eax
	call	_Init
	pop	ecx
	pop	ecx
	test	eax, eax
; Line 365
	jne	SHORT $LN3@Hash
; Line 368
	push	DWORD PTR _databitlen$[ebp]
	lea	eax, DWORD PTR _ctx$[ebp]
	push	DWORD PTR _data$[ebp]
	push	eax
	call	_Update
	add	esp, 12					; 0000000cH
	test	eax, eax
; Line 369
	jne	SHORT $LN3@Hash
; Line 372
	push	DWORD PTR _hashval$[ebp]
	lea	eax, DWORD PTR _ctx$[ebp]
	push	eax
	call	_Final
	pop	ecx
	pop	ecx
$LN3@Hash:
; Line 375
	leave
	ret	0
_Hash	ENDP
_TEXT	ENDS
END