;
; File generated by cc65 v 2.19 - Git dcdf7ade0
;
	.fopt		compiler,"cc65 v 2.19 - Git dcdf7ade0"
	.setcpu		"65SC02"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_LynxGD_LowPowerMode
	.import		_LynxGD_OpenFile
	.import		_LynxGD_ReadFile
	.import		_LynxGD_WriteFile
	.import		_LynxGD_CloseFile
	.import		_LynxGD_SeekFile
	.import		_LynxGD_GetFileSize
	.import		_LynxGD_ProgramROMFromFile
	.export		_LynxGD_Program
	.export		_LynxGD_ProgramLYX
	.export		_LynxGD_ProgramHomebrew
	.export		_LaunchROM

.segment	"DATA"

_bLaunchLowPower:
	.byte	$01
_gObjectLoader:
	.byte	$FF
	.byte	$81
	.byte	$CA
	.byte	$33
	.byte	$BE
	.byte	$80
	.byte	$A2
	.byte	$C4
	.byte	$6D
	.byte	$98
	.byte	$FE
	.byte	$8D
	.byte	$BC
	.byte	$66
	.byte	$C0
	.byte	$7A
	.byte	$09
	.byte	$50
	.byte	$23
	.byte	$28
	.byte	$18
	.byte	$C8
	.byte	$06
	.byte	$70
	.byte	$58
	.byte	$4F
	.byte	$1B
	.byte	$E1
	.byte	$C7
	.byte	$90
	.byte	$08
	.byte	$CD
	.byte	$1A
	.byte	$6E
	.byte	$5A
	.byte	$45
	.byte	$32
	.byte	$D7
	.byte	$6D
	.byte	$C6
	.byte	$8A
	.byte	$E5
	.byte	$D8
	.byte	$5C
	.byte	$A0
	.byte	$E8
	.byte	$4F
	.byte	$7A
	.byte	$5F
	.byte	$73
	.byte	$8D
	.byte	$22
	.byte	$A2
	.byte	$00
	.byte	$A0
	.byte	$08
	.byte	$AD
	.byte	$B2
	.byte	$FC
	.byte	$95
	.byte	$26
	.byte	$E8
	.byte	$88
	.byte	$D0
	.byte	$F7
	.byte	$A5
	.byte	$26
	.byte	$85
	.byte	$2E
	.byte	$20
	.byte	$CA
	.byte	$FB
	.byte	$A5
	.byte	$28
	.byte	$49
	.byte	$FF
	.byte	$A8
	.byte	$A5
	.byte	$27
	.byte	$49
	.byte	$FF
	.byte	$AA
	.byte	$20
	.byte	$A1
	.byte	$FB
	.byte	$A5
	.byte	$2A
	.byte	$A6
	.byte	$2B
	.byte	$85
	.byte	$31
	.byte	$86
	.byte	$32
	.byte	$A5
	.byte	$2D
	.byte	$49
	.byte	$FF
	.byte	$A8
	.byte	$A5
	.byte	$2C
	.byte	$49
	.byte	$FF
	.byte	$AA
	.byte	$20
	.byte	$AC
	.byte	$FB
	.byte	$6C
	.byte	$2A
	.byte	$00
	.byte	$E8
	.byte	$D0
	.byte	$03
	.byte	$C8
	.byte	$F0
	.byte	$57
	.byte	$20
	.byte	$BF
	.byte	$FB
	.byte	$80
	.byte	$F5
	.byte	$E8
	.byte	$D0
	.byte	$03
	.byte	$C8
	.byte	$F0
	.byte	$4C
	.byte	$20
	.byte	$BF
	.byte	$FB
	.byte	$92
	.byte	$31
	.byte	$E6
	.byte	$31
	.byte	$D0
	.byte	$F1
	.byte	$E6
	.byte	$32
	.byte	$80
	.byte	$ED
	.byte	$AD
	.byte	$B2
	.byte	$FC
	.byte	$E6
	.byte	$2F
	.byte	$D0
	.byte	$38
	.byte	$E6
	.byte	$30
	.byte	$D0
	.byte	$34
	.byte	$48
	.byte	$DA
	.byte	$5A
	.byte	$A5
	.byte	$1A
	.byte	$29
	.byte	$FC
	.byte	$A8
	.byte	$09
	.byte	$02
	.byte	$AA
	.byte	$A5
	.byte	$2E
	.byte	$E6
	.byte	$2E
	.byte	$38
	.byte	$80
	.byte	$0B
	.byte	$90
	.byte	$04
	.byte	$8E
	.byte	$8B
	.byte	$FD
	.byte	$18
	.byte	$E8
	.byte	$8E
	.byte	$87
	.byte	$FD
	.byte	$CA
	.byte	$8E
	.byte	$87
	.byte	$FD
	.byte	$2A
	.byte	$8C
	.byte	$8B
	.byte	$FD
	.byte	$D0
	.byte	$EC
	.byte	$A5
	.byte	$1A
	.byte	$8D
	.byte	$8B
	.byte	$FD
	.byte	$64
	.byte	$2F
	.byte	$A9
	.byte	$F8
	.byte	$85
	.byte	$30
	.byte	$7A
	.byte	$FA
	.byte	$68
	.byte	$60
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$88
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00

.segment	"RODATA"

S0002:
	.byte	$6D,$65,$6E,$75,$2F,$68,$6F,$6D,$65,$62,$72,$65,$77,$00
S0001	:=	S0002+0

; ---------------------------------------------------------------
; enum $anon-enum-0002 __near__ __fastcall__ LynxGD_Program (const char *pFilename)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_LynxGD_Program: near

.segment	"CODE"

	jsr     pushax
	lda     #$01
	sta     M0001
	sta     _bLaunchLowPower
	jsr     ldax0sp
	jsr     _LynxGD_OpenFile
	cmp     #$00
	jne     L0010
	lda     #<(M0002)
	ldx     #>(M0002)
	jsr     pushax
	ldx     #$00
	lda     #$40
	jsr     _LynxGD_ReadFile
	lda     M0002+6
	cmp     #$42
	bne     L0013
	lda     M0002+7
	cmp     #$53
	bne     L0013
	lda     M0002+8
	cmp     #$39
	bne     L0013
	lda     M0002+9
	cmp     #$33
	bne     L0013
	jsr     _LynxGD_CloseFile
	jsr     ldax0sp
	jsr     _LynxGD_ProgramHomebrew
	jmp     incsp2
L0013:	lda     M0002
	cmp     #$4C
	jne     L0008
	lda     M0002+1
	cmp     #$59
	jne     L0008
	lda     M0002+2
	cmp     #$4E
	jne     L0008
	lda     M0002+3
	cmp     #$58
	jne     L0008
	lda     M0002+60
	and     #$40
	beq     L0016
	stz     _bLaunchLowPower
L0016:	lda     M0002+5
	sta     M0003
	cmp     #$01
	beq     L0018
	lda     M0003
	cmp     #$02
	beq     L0018
	cmp     #$04
	beq     L0018
	cmp     #$08
	jne     L0010
L0018:	jsr     _LynxGD_GetFileSize
	sta     M0005
	stx     M0005+1
	ldy     sreg
	sty     M0005+2
	ldy     sreg+1
	sty     M0005+3
	ldy     #<(M0005)
	sty     ptr1
	ldy     #>(M0005)
	lda     #$40
	jsr     lsubeqa
	ldx     #$00
	stz     sreg
	stz     sreg+1
	lda     #$40
	jsr     _LynxGD_SeekFile
	lda     M0003
	sta     M0004+1
	stz     M0004
	lda     M0005+3
	sta     sreg+1
	lda     M0005+2
	sta     sreg
	ldx     M0005+1
	lda     M0005
	jsr     pusheax
	jsr     axulong
	lda     M0004
	ldx     M0004+1
	jsr     tosaddeax
	ldy     #$01
	jsr     deceaxy
	jsr     pusheax
	lda     M0004
	ldx     M0004+1
	jsr     axulong
	jsr     tosudiveax
	sta     M0006
	stx     M0006+1
	jsr     push0
	lda     M0003
	jsr     pusha
	lda     M0006
	ldx     M0006+1
	jsr     pushax
	lda     #$00
	jsr     _LynxGD_ProgramROMFromFile
	sta     M0001
	jsr     _LynxGD_CloseFile
	bra     L0010
L0008:	jsr     _LynxGD_CloseFile
	jsr     ldax0sp
	jsr     _LynxGD_ProgramLYX
	jmp     incsp2
L0010:	ldx     #$00
	lda     M0001
	jmp     incsp2

.segment	"BSS"

M0001:
	.res	1,$00
M0002:
	.res	64,$00
M0003:
	.res	1,$00
M0004:
	.res	2,$00
M0005:
	.res	4,$00
M0006:
	.res	2,$00

.endproc

; ---------------------------------------------------------------
; enum $anon-enum-0002 __near__ __fastcall__ LynxGD_ProgramLYX (const char *pFilename)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_LynxGD_ProgramLYX: near

.segment	"CODE"

	jsr     pushax
	lda     #$01
	sta     M0001
	jsr     ldax0sp
	jsr     _LynxGD_OpenFile
	cmp     #$00
	jne     L0002
	jsr     _LynxGD_GetFileSize
	sta     M0004
	stx     M0004+1
	ldy     sreg
	sty     M0004+2
	ldy     sreg+1
	sty     M0004+3
	lda     M0004+3
	sta     sreg+1
	lda     M0004+2
	sta     sreg
	ldx     M0004+1
	lda     M0004
	ldy     sreg+1
	cpy     #$00
	bne     L0012
	ldy     sreg
	cpy     #$01
	bne     L000A
	cpx     #$00
	bne     L0012
	cmp     #$00
	beq     L000E
	bra     L0012
L000A:	cpy     #$02
	bne     L000B
	cpx     #$00
	bne     L0012
	cmp     #$00
	beq     L000F
	bra     L0012
L000B:	cpy     #$04
	bne     L000C
	cpx     #$00
	bne     L0012
	cmp     #$00
	beq     L0012
	bra     L0012
L000C:	cpy     #$08
	bne     L0012
	cpx     #$00
	bne     L0012
	cmp     #$00
	beq     L0011
	bra     L0012
L000E:	tya
	bra     L000D
L000F:	tya
	bra     L000D
L0011:	tya
	bra     L000D
L0012:	lda     #$04
L000D:	sta     M0002
	sta     M0003+1
	stz     M0003
	lda     M0004+3
	sta     sreg+1
	lda     M0004+2
	sta     sreg
	ldx     M0004+1
	lda     M0004
	jsr     pusheax
	jsr     axulong
	lda     M0003
	ldx     M0003+1
	jsr     tosaddeax
	ldy     #$01
	jsr     deceaxy
	jsr     pusheax
	lda     M0003
	ldx     M0003+1
	jsr     axulong
	jsr     tosudiveax
	sta     M0005
	stx     M0005+1
	jsr     push0
	lda     M0002
	jsr     pusha
	lda     M0005
	ldx     M0005+1
	jsr     pushax
	lda     #$00
	jsr     _LynxGD_ProgramROMFromFile
	sta     M0001
	jsr     _LynxGD_CloseFile
L0002:	ldx     #$00
	lda     M0001
	jmp     incsp2

.segment	"BSS"

M0001:
	.res	1,$00
M0002:
	.res	1,$00
M0003:
	.res	2,$00
M0004:
	.res	4,$00
M0005:
	.res	2,$00

.endproc

; ---------------------------------------------------------------
; enum $anon-enum-0002 __near__ __fastcall__ LynxGD_ProgramHomebrew (const char *pFilename)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_LynxGD_ProgramHomebrew: near

.segment	"CODE"

	jsr     pushax
	lda     #$01
	sta     M0001
	lda     #$FF
	sta     M0002
	sta     M0002+1
	jsr     ldax0sp
	jsr     _LynxGD_OpenFile
	cmp     #$00
	jne     L0007
	lda     #<(M0003)
	ldx     #>(M0003)
	jsr     pushax
	ldx     #$00
	lda     #$0A
	jsr     _LynxGD_ReadFile
	jsr     _LynxGD_CloseFile
	ldx     #$00
	lda     M0003+6
	cmp     #$42
	jne     L0011
	lda     M0003+7
	cmp     #$53
	jne     L0011
	lda     M0003+8
	cmp     #$39
	jne     L0011
	lda     M0003+9
	cmp     #$33
	jne     L0011
	lda     #<(S0001)
	ldx     #>(S0001)
	jsr     _LynxGD_OpenFile
	cmp     #$00
	jne     L0007
	jsr     _LynxGD_GetFileSize
	sta     M0004
	stx     M0004+1
	cmp     #$D3
	txa
	sbc     #$00
	jcc     L000E
	lda     M0003+5
	ldx     M0003+4
	ldy     #$0A
	jsr     decaxy
	sta     M0004
	stx     M0004+1
	lda     M0003+3
	sta     _gObjectLoader+207
	lda     M0003+2
	sta     _gObjectLoader+208
	lda     M0004
	sta     _gObjectLoader+209
	lda     M0004+1
	sta     _gObjectLoader+210
	lda     #<(_gObjectLoader)
	ldx     #>(_gObjectLoader)
	jsr     pushax
	ldx     #$00
	lda     #$D3
	jsr     _LynxGD_WriteFile
	jsr     _LynxGD_CloseFile
L0009:	lda     M0002
	ora     M0002+1
	php
	lda     M0002
	sec
	sbc     #$01
	sta     M0002
	bcs     L000C
	dec     M0002+1
L000C:	plp
	bne     L0009
	lda     #<(S0002)
	ldx     #>(S0002)
	jsr     _LynxGD_OpenFile
	jsr     push0
	lda     #$08
	jsr     pusha
	lda     #$01
	jsr     pusha0
	dea
	jsr     _LynxGD_ProgramROMFromFile
	cmp     #$00
	bne     L000E
	dea
	clc
	adc     M0004
	lda     #$07
	adc     M0004+1
	lsr     a
	lsr     a
	lsr     a
	sta     M0005
	stz     M0005+1
	jsr     _LynxGD_CloseFile
	jsr     ldax0sp
	jsr     _LynxGD_OpenFile
	ldx     #$00
	stz     sreg
	stz     sreg+1
	lda     #$0A
	jsr     _LynxGD_SeekFile
	lda     #$01
	jsr     pusha0
	lda     #$08
	jsr     pusha
	lda     M0005
	ldx     M0005+1
	jsr     pushax
	lda     #$00
	jsr     _LynxGD_ProgramROMFromFile
	cmp     #$00
	bne     L000E
	stz     M0001
L000E:	jsr     _LynxGD_CloseFile
L0007:	ldx     #$00
L0011:	lda     M0001
	jmp     incsp2

.segment	"BSS"

M0001:
	.res	1,$00
M0002:
	.res	2,$00
M0003:
	.res	10,$00
M0004:
	.res	2,$00
M0005:
	.res	2,$00

.endproc

; ---------------------------------------------------------------
; void __near__ LaunchROM (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_LaunchROM: near

.segment	"CODE"

	lda     _bLaunchLowPower
	beq     L0002
	jsr     _LynxGD_LowPowerMode
L0002:	sei
	stz     $FD50
	stz     $FFF9
	ldx     #$FD
	stz     M0001
	stx     M0001+1
	lda     #$40
	sta     M0002
	bra     L000B
L0003:	lda     M0001+1
	sta     ptr1+1
	lda     M0001
	sta     ptr1
	lda     #$00
	sta     (ptr1)
	inc     M0001
	bne     L000B
	inc     M0001+1
L000B:	lda     M0002
	dec     M0002
	tax
	bne     L0003
	stz     $FD80
	stz     $FD81
	stz     $FD92
	stz     $FD9C
	stz     $FD9D
	stz     $FD9E
	stz     $FD9D
	ldx     #$FD
	lda     #$A0
	sta     M0001
	stx     M0001+1
	lda     #$20
	sta     M0002
	bra     L000C
L0007:	lda     M0001+1
	sta     ptr1+1
	lda     M0001
	sta     ptr1
	lda     #$00
	sta     (ptr1)
	inc     M0001
	bne     L000C
	inc     M0001+1
L000C:	lda     M0002
	dec     M0002
	tax
	bne     L0007
	brk
	rts

.segment	"BSS"

M0001:
	.res	2,$00
M0002:
	.res	1,$00

.endproc
