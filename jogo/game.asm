;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.4 #11952 (MINGW64)
;--------------------------------------------------------
	.module game
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setupFoguete
	.globl _setupAstronauta
	.globl _checkCollisions
	.globl _setPositionGameCharacter
	.globl _performantdelay
	.globl _puts
	.globl _sprintf
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _spritesize
	.globl _foguete
	.globl _astronauta
	.globl _sprites1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_sprites1::
	.ds 128
_astronauta::
	.ds 8
_foguete::
	.ds 8
_spritesize::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;astronautaEfoguete.c:26: unsigned char sprites1[] =
	ld	hl, #_sprites1
	ld	(hl), #0x0f
	ld	hl, #(_sprites1 + 0x0001)
	ld	(hl), #0x0f
	ld	hl, #(_sprites1 + 0x0002)
	ld	(hl), #0x1f
	ld	hl, #(_sprites1 + 0x0003)
	ld	(hl), #0x10
	ld	hl, #(_sprites1 + 0x0004)
	ld	(hl), #0x3f
	ld	hl, #(_sprites1 + 0x0005)
	ld	(hl), #0x20
	ld	hl, #(_sprites1 + 0x0006)
	ld	(hl), #0x3f
	ld	hl, #(_sprites1 + 0x0007)
	ld	(hl), #0x20
	ld	hl, #(_sprites1 + 0x0008)
	ld	(hl), #0x3f
	ld	hl, #(_sprites1 + 0x0009)
	ld	(hl), #0x20
	ld	hl, #(_sprites1 + 0x000a)
	ld	(hl), #0x7f
	ld	hl, #(_sprites1 + 0x000b)
	ld	(hl), #0x70
	ld	hl, #(_sprites1 + 0x000c)
	ld	(hl), #0xff
	ld	hl, #(_sprites1 + 0x000d)
	ld	(hl), #0x90
	ld	hl, #(_sprites1 + 0x000e)
	ld	(hl), #0xdf
	ld	hl, #(_sprites1 + 0x000f)
	ld	(hl), #0xb0
	ld	hl, #(_sprites1 + 0x0010)
	ld	(hl), #0xf8
	ld	hl, #(_sprites1 + 0x0011)
	ld	(hl), #0xf8
	ld	hl, #(_sprites1 + 0x0012)
	ld	(hl), #0xfc
	ld	hl, #(_sprites1 + 0x0013)
	ld	(hl), #0x0c
	ld	hl, #(_sprites1 + 0x0014)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x0015)
	ld	(hl), #0x06
	ld	hl, #(_sprites1 + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_sprites1 + 0x0017)
	ld	(hl), #0x1f
	ld	hl, #(_sprites1 + 0x0018)
	ld	(hl), #0xf1
	ld	hl, #(_sprites1 + 0x0019)
	ld	(hl), #0x19
	ld	hl, #(_sprites1 + 0x001a)
	ld	(hl), #0xf1
	ld	hl, #(_sprites1 + 0x001b)
	ld	(hl), #0x1f
	ld	hl, #(_sprites1 + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_sprites1 + 0x001d)
	ld	(hl), #0x1f
	ld	hl, #(_sprites1 + 0x001e)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x001f)
	ld	(hl), #0x02
	ld	hl, #(_sprites1 + 0x0020)
	ld	(hl), #0xdf
	ld	hl, #(_sprites1 + 0x0021)
	ld	(hl), #0xb0
	ld	hl, #(_sprites1 + 0x0022)
	ld	(hl), #0x99
	ld	hl, #(_sprites1 + 0x0023)
	ld	(hl), #0xf6
	ld	hl, #(_sprites1 + 0x0024)
	ld	(hl), #0x98
	ld	hl, #(_sprites1 + 0x0025)
	ld	(hl), #0xf7
	ld	hl, #(_sprites1 + 0x0026)
	ld	(hl), #0x98
	ld	hl, #(_sprites1 + 0x0027)
	ld	(hl), #0xf7
	ld	hl, #(_sprites1 + 0x0028)
	ld	(hl), #0x70
	ld	hl, #(_sprites1 + 0x0029)
	ld	(hl), #0x7f
	ld	hl, #(_sprites1 + 0x002a)
	ld	(hl), #0x11
	ld	hl, #(_sprites1 + 0x002b)
	ld	(hl), #0x1f
	ld	hl, #(_sprites1 + 0x002c)
	ld	(hl), #0x0f
	ld	hl, #(_sprites1 + 0x002d)
	ld	(hl), #0x0f
	ld	hl, #(_sprites1 + 0x002e)
	ld	(hl), #0x06
	ld	hl, #(_sprites1 + 0x002f)
	ld	(hl), #0x06
	ld	hl, #(_sprites1 + 0x0030)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x0031)
	ld	(hl), #0x02
	ld	hl, #(_sprites1 + 0x0032)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x0033)
	ld	(hl), #0x02
	ld	hl, #(_sprites1 + 0x0034)
	ld	(hl), #0x1e
	ld	hl, #(_sprites1 + 0x0035)
	ld	(hl), #0xe2
	ld	hl, #(_sprites1 + 0x0036)
	ld	(hl), #0x02
	ld	hl, #(_sprites1 + 0x0037)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x0038)
	ld	(hl), #0xe2
	ld	hl, #(_sprites1 + 0x0039)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x003a)
	ld	(hl), #0xf2
	ld	hl, #(_sprites1 + 0x003b)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x003c)
	ld	(hl), #0x1c
	ld	hl, #(_sprites1 + 0x003d)
	ld	(hl), #0x1c
	ld	hl, #(_sprites1 + 0x003e)
	ld	(hl), #0x0c
	ld	hl, #(_sprites1 + 0x003f)
	ld	(hl), #0x0c
	ld	hl, #(_sprites1 + 0x0040)
	ld	(hl), #0x6c
	ld	hl, #(_sprites1 + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_sprites1 + 0x0042)
	ld	(hl), #0x7c
	ld	hl, #(_sprites1 + 0x0043)
	ld	(hl), #0x44
	ld	hl, #(_sprites1 + 0x0044)
	ld	(hl), #0x54
	ld	hl, #(_sprites1 + 0x0045)
	ld	(hl), #0x6c
	ld	hl, #(_sprites1 + 0x0046)
	ld	(hl), #0x6f
	ld	hl, #(_sprites1 + 0x0047)
	ld	(hl), #0x7f
	ld	hl, #(_sprites1 + 0x0048)
	ld	(hl), #0x38
	ld	hl, #(_sprites1 + 0x0049)
	ld	(hl), #0x3f
	ld	hl, #(_sprites1 + 0x004a)
	ld	(hl), #0x27
	ld	hl, #(_sprites1 + 0x004b)
	ld	(hl), #0x38
	ld	hl, #(_sprites1 + 0x004c)
	ld	(hl), #0x24
	ld	hl, #(_sprites1 + 0x004d)
	ld	(hl), #0x3b
	ld	hl, #(_sprites1 + 0x004e)
	ld	(hl), #0x24
	ld	hl, #(_sprites1 + 0x004f)
	ld	(hl), #0x3b
	ld	hl, #(_sprites1 + 0x0050)
	ld	(hl), #0x36
	ld	hl, #(_sprites1 + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_sprites1 + 0x0052)
	ld	(hl), #0x3e
	ld	hl, #(_sprites1 + 0x0053)
	ld	(hl), #0x22
	ld	hl, #(_sprites1 + 0x0054)
	ld	(hl), #0x2a
	ld	hl, #(_sprites1 + 0x0055)
	ld	(hl), #0x36
	ld	hl, #(_sprites1 + 0x0056)
	ld	(hl), #0xf6
	ld	hl, #(_sprites1 + 0x0057)
	ld	(hl), #0xfe
	ld	hl, #(_sprites1 + 0x0058)
	ld	(hl), #0x1c
	ld	hl, #(_sprites1 + 0x0059)
	ld	(hl), #0xfc
	ld	hl, #(_sprites1 + 0x005a)
	ld	(hl), #0xe4
	ld	hl, #(_sprites1 + 0x005b)
	ld	(hl), #0x1c
	ld	hl, #(_sprites1 + 0x005c)
	ld	(hl), #0x24
	ld	hl, #(_sprites1 + 0x005d)
	ld	(hl), #0xdc
	ld	hl, #(_sprites1 + 0x005e)
	ld	(hl), #0x24
	ld	hl, #(_sprites1 + 0x005f)
	ld	(hl), #0xdc
	ld	hl, #(_sprites1 + 0x0060)
	ld	(hl), #0x24
	ld	hl, #(_sprites1 + 0x0061)
	ld	(hl), #0x3b
	ld	hl, #(_sprites1 + 0x0062)
	ld	(hl), #0x34
	ld	hl, #(_sprites1 + 0x0063)
	ld	(hl), #0x3b
	ld	hl, #(_sprites1 + 0x0064)
	ld	(hl), #0x17
	ld	hl, #(_sprites1 + 0x0065)
	ld	(hl), #0x18
	ld	hl, #(_sprites1 + 0x0066)
	ld	(hl), #0x18
	ld	hl, #(_sprites1 + 0x0067)
	ld	(hl), #0x1f
	ld	hl, #(_sprites1 + 0x0068)
	ld	(hl), #0x0c
	ld	hl, #(_sprites1 + 0x0069)
	ld	(hl), #0x0f
	ld	hl, #(_sprites1 + 0x006a)
	ld	(hl), #0x06
	ld	hl, #(_sprites1 + 0x006b)
	ld	(hl), #0x07
	ld	hl, #(_sprites1 + 0x006c)
	ld	(hl), #0x02
	ld	hl, #(_sprites1 + 0x006d)
	ld	(hl), #0x03
	ld	hl, #(_sprites1 + 0x006e)
	ld	(hl), #0x01
	ld	hl, #(_sprites1 + 0x006f)
	ld	(hl), #0x01
	ld	hl, #(_sprites1 + 0x0070)
	ld	(hl), #0x24
	ld	hl, #(_sprites1 + 0x0071)
	ld	(hl), #0xdc
	ld	hl, #(_sprites1 + 0x0072)
	ld	(hl), #0x2c
	ld	hl, #(_sprites1 + 0x0073)
	ld	(hl), #0xdc
	ld	hl, #(_sprites1 + 0x0074)
	ld	(hl), #0xe8
	ld	hl, #(_sprites1 + 0x0075)
	ld	(hl), #0x18
	ld	hl, #(_sprites1 + 0x0076)
	ld	(hl), #0x18
	ld	hl, #(_sprites1 + 0x0077)
	ld	(hl), #0xf8
	ld	hl, #(_sprites1 + 0x0078)
	ld	(hl), #0x30
	ld	hl, #(_sprites1 + 0x0079)
	ld	(hl), #0xf0
	ld	hl, #(_sprites1 + 0x007a)
	ld	(hl), #0x60
	ld	hl, #(_sprites1 + 0x007b)
	ld	(hl), #0xe0
	ld	hl, #(_sprites1 + 0x007c)
	ld	(hl), #0x40
	ld	hl, #(_sprites1 + 0x007d)
	ld	(hl), #0xc0
	ld	hl, #(_sprites1 + 0x007e)
	ld	(hl), #0x80
	ld	hl, #(_sprites1 + 0x007f)
	ld	(hl), #0x80
;game.c:8: UBYTE spritesize = 8;
	ld	hl, #_spritesize
	ld	(hl), #0x08
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;game.c:10: void performantdelay(UINT8 numloops){ // nova funcao delay
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;game.c:12: for(i = 0; i < numloops; i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;game.c:13: wait_vbl_done();
	call	_wait_vbl_done
;game.c:12: for(i = 0; i < numloops; i++){
	inc	c
;game.c:15: }
	jr	00103$
;game.c:17: void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter
; ---------------------------------
_setPositionGameCharacter::
	add	sp, #-3
;game.c:18: move_sprite(character->spriteIds[0], x, y);
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;game.c:19: move_sprite(character->spriteIds[1], x + spritesize, y);
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#2
	ld	(hl), a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a, (hl)
	ld	(bc), a
;game.c:20: move_sprite(character->spriteIds[2], x, y + spritesize);
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;game.c:21: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	b, a
	ldhl	sp,	#1
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	c, a
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ld	e, a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;game.c:21: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
;game.c:22: }
	add	sp, #3
	ret
;game.c:24: UBYTE checkCollisions(struct personagem* one, struct personagem* two){
;	---------------------------------
; Function checkCollisions
; ---------------------------------
_checkCollisions::
	add	sp, #-16
;game.c:25: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
;c
	ld	a, e
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#20
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;c
	pop	de
	push	de
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#5
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
;c
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#4
	ld	a, (hl+)
	sub	a, (hl)
	jr	C, 00108$
;c
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#8
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00152$
	bit	7, d
	jr	NZ, 00153$
	cp	a, a
	jr	00153$
00152$:
	bit	7, d
	jr	Z, 00153$
	scf
00153$:
	jr	C, 00108$
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#15
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	hl
	inc	hl
	ld	a, (hl)
	sub	a, c
	jr	C, 00108$
	ld	b, #0x00
;c
	pop	de
	push	de
	ld	hl, #0x0007
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#15
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl-), a
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00154$
	bit	7, d
	jr	NZ, 00155$
	cp	a, a
	jr	00155$
00154$:
	bit	7, d
	jr	Z, 00155$
	scf
00155$:
	jp	NC, 00104$
00108$:
	ldhl	sp,	#5
	ld	a, (hl-)
	sub	a, (hl)
	jp	C, 00103$
;c
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#6
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00156$
	bit	7, d
	jr	NZ, 00157$
	cp	a, a
	jr	00157$
00156$:
	bit	7, d
	jr	Z, 00157$
	scf
00157$:
	jr	C, 00103$
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
	inc	hl
	ld	(hl), a
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#15
	ld	a, (hl)
	sub	a, c
	jr	C, 00103$
	ldhl	sp,	#11
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
;c
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#9
	ld	e, l
	ld	d, h
	ldhl	sp,	#14
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00158$
	bit	7, d
	jr	NZ, 00159$
	cp	a, a
	jr	00159$
00158$:
	bit	7, d
	jr	Z, 00159$
	scf
00159$:
	jr	NC, 00104$
00103$:
	xor	a, a
	ldhl	sp,	#15
	ld	(hl), a
	jr	00105$
00104$:
	ldhl	sp,	#15
	ld	(hl), #0x01
00105$:
	ldhl	sp,	#15
	ld	e, (hl)
;game.c:26: }
	add	sp, #16
	ret
;game.c:34: void setupAstronauta(){
;	---------------------------------
; Function setupAstronauta
; ---------------------------------
_setupAstronauta::
;game.c:35: astronauta.x = 80;
	ld	bc, #_astronauta+0
	ld	hl, #(_astronauta + 0x0004)
	ld	(hl), #0x50
;game.c:36: astronauta.y = 130;
	ld	hl, #(_astronauta + 0x0005)
	ld	(hl), #0x82
;game.c:37: astronauta.width = 16;
	ld	hl, #(_astronauta + 0x0006)
	ld	(hl), #0x10
;game.c:38: astronauta.height = 16;
	ld	hl, #(_astronauta + 0x0007)
	ld	(hl), #0x10
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;game.c:42: astronauta.spriteIds[0] = 0;
	xor	a, a
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;game.c:44: astronauta.spriteIds[1] = 1;
	ld	hl, #(_astronauta + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;game.c:46: astronauta.spriteIds[2] = 2;
	ld	hl, #(_astronauta + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;game.c:48: astronauta.spriteIds[3] = 3;
	ld	hl, #(_astronauta + 0x0003)
	ld	(hl), #0x03
;game.c:50: setPositionGameCharacter(&astronauta, astronauta.x, astronauta.y);
	ld	a, (#(_astronauta + 0x0005) + 0)
	ld	hl, #(_astronauta + 0x0004)
	ld	h, (hl)
	push	af
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:51: }
	ret
;game.c:53: void setupFoguete(){
;	---------------------------------
; Function setupFoguete
; ---------------------------------
_setupFoguete::
;game.c:54: foguete.x = 80;
	ld	bc, #_foguete+0
	ld	hl, #(_foguete + 0x0004)
	ld	(hl), #0x50
;game.c:55: foguete.y = 30;
	ld	hl, #(_foguete + 0x0005)
	ld	(hl), #0x1e
;game.c:56: foguete.width = 16;
	ld	hl, #(_foguete + 0x0006)
	ld	(hl), #0x10
;game.c:57: foguete.height = 16;    
	ld	hl, #(_foguete + 0x0007)
	ld	(hl), #0x10
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;game.c:61: foguete.spriteIds[0] = 4;
	ld	a, #0x04
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;game.c:63: foguete.spriteIds[1] = 5;
	ld	hl, #(_foguete + 0x0001)
	ld	(hl), #0x05
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x001a)
	ld	(hl), #0x06
;game.c:65: foguete.spriteIds[2] = 6;
	ld	hl, #(_foguete + 0x0002)
	ld	(hl), #0x06
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x001e)
	ld	(hl), #0x07
;game.c:67: foguete.spriteIds[3] = 7;
	ld	hl, #(_foguete + 0x0003)
	ld	(hl), #0x07
;game.c:69: setPositionGameCharacter(&foguete, foguete.x, foguete.y);
	ld	a, (#(_foguete + 0x0005) + 0)
	ld	hl, #(_foguete + 0x0004)
	ld	h, (hl)
	push	af
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:70: }
	ret
;game.c:72: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-80
;game.c:74: set_sprite_data(0, 8, sprites1);
	ld	hl, #_sprites1
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;game.c:75: setupAstronauta();
	call	_setupAstronauta
;game.c:76: setupFoguete();
	call	_setupFoguete
;game.c:78: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;game.c:79: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;game.c:81: while(!checkCollisions(&astronauta,&foguete)){
00111$:
	ld	hl, #_foguete
	push	hl
	ld	hl, #_astronauta
	push	hl
	call	_checkCollisions
	add	sp, #4
	ld	a, e
	or	a, a
	jp	NZ, 00113$
;game.c:82: if(joypad() & J_LEFT){
	call	_joypad
;game.c:83: astronauta.x=astronauta.x-2;
	ld	bc, #_astronauta + 4
;game.c:84: setPositionGameCharacter(&astronauta, astronauta.x,astronauta.y);
;game.c:82: if(joypad() & J_LEFT){
	bit	1, e
	jr	Z, 00102$
;game.c:83: astronauta.x=astronauta.x-2;
	ld	a, (bc)
	dec	a
	dec	a
	ld	(bc), a
;game.c:84: setPositionGameCharacter(&astronauta, astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	h, (hl)
	ld	a, (bc)
	ld	d, a
	push	bc
	ld	l, d
	push	hl
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
	pop	bc
00102$:
;game.c:86: if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00104$
;game.c:87: astronauta.x=astronauta.x+2;
	ld	a, (bc)
	add	a, #0x02
	ld	(bc), a
;game.c:88: setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	h, (hl)
	ld	a, (bc)
	ld	d, a
	push	bc
	ld	l, d
	push	hl
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
	pop	bc
00104$:
;game.c:90: if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00106$
;game.c:91: astronauta.y=astronauta.y-2;
	ld	a, (#(_astronauta + 0x0005) + 0)
	dec	a
	dec	a
	ld	(#(_astronauta + 0x0005)),a
;game.c:92: setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	h, (hl)
	ld	a, (bc)
	ld	d, a
	push	bc
	ld	l, d
	push	hl
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
	pop	bc
00106$:
;game.c:94: if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00108$
;game.c:95: astronauta.y=astronauta.y+2;
	ld	a, (#(_astronauta + 0x0005) + 0)
	add	a, #0x02
	ld	(#(_astronauta + 0x0005)),a
;game.c:96: setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	h, (hl)
	ld	a, (bc)
	ld	d, a
	push	bc
	ld	l, d
	push	hl
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
	pop	bc
00108$:
;game.c:99: foguete.y+= 5;
	ld	a, (#(_foguete + 0x0005) + 0)
	add	a, #0x05
	ld	(#(_foguete + 0x0005)),a
;game.c:100: if(foguete.y >= 144){
;game.c:102: foguete.x = astronauta.x;
;game.c:100: if(foguete.y >= 144){
	ld	a, (#(_foguete + 0x0005) + 0)
	sub	a, #0x90
	jr	C, 00110$
;game.c:101: foguete.y=0;
	ld	hl, #(_foguete + 0x0005)
	ld	(hl), #0x00
;game.c:102: foguete.x = astronauta.x;
	ld	a, (bc)
	ld	(#(_foguete + 0x0004)),a
00110$:
;game.c:104: setPositionGameCharacter(&foguete,foguete.x,foguete.y);
	ld	hl, #(_foguete + 0x0005)
	ld	c, (hl)
	ld	hl, #(_foguete + 0x0004)
	ld	b, (hl)
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #_foguete
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:105: performantdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00111$
00113$:
;game.c:111: sprintf(str,"\n \n \n \n \n \n \n === GAME  OVER ===");
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #___str_0
	push	hl
	push	de
	call	_sprintf
	add	sp, #4
	call	_puts
	add	sp, #2
;game.c:113: }
	add	sp, #80
	ret
___str_0:
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " === GAME  OVER ==="
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
