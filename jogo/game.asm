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
	.globl _puts
	.globl _sprintf
	.globl _set_sprite_data
	.globl _joypad
	.globl _delay
	.globl _sorriso
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_sorriso::
	.ds 32
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
;sorriso.c:26: unsigned char sorriso[] =
	ld	hl, #_sorriso
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x0001)
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x0002)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0003)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x0004)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0005)
	ld	(hl), #0xa5
	ld	hl, #(_sorriso + 0x0006)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0007)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x0008)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0009)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x000a)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x000b)
	ld	(hl), #0xbd
	ld	hl, #(_sorriso + 0x000c)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x000d)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x000e)
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x000f)
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x0010)
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x0011)
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x0012)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0013)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0015)
	ld	(hl), #0xa5
	ld	hl, #(_sorriso + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0017)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x0019)
	ld	(hl), #0xa5
	ld	hl, #(_sorriso + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x001b)
	ld	(hl), #0x99
	ld	hl, #(_sorriso + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_sorriso + 0x001d)
	ld	(hl), #0x81
	ld	hl, #(_sorriso + 0x001e)
	ld	(hl), #0x7e
	ld	hl, #(_sorriso + 0x001f)
	ld	(hl), #0x7e
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;game.c:4: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-80
;game.c:6: set_sprite_data(0,2,sorriso);
	ld	hl, #_sorriso
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ld	a, #0x4e
	ld	(hl+), a
	ld	(hl), #0x58
;game.c:9: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;game.c:14: while(1){
00111$:
;game.c:16: switch (joypad()){
	call	_joypad
	ld	a, e
	dec	a
	jr	Z, 00102$
	ld	a,e
	cp	a,#0x02
	jr	Z, 00101$
	cp	a,#0x04
	jr	Z, 00103$
	cp	a,#0x08
	jr	Z, 00104$
	cp	a,#0x10
	jr	Z, 00107$
	cp	a,#0x20
	jr	Z, 00108$
	cp	a,#0x40
	jr	Z, 00105$
	sub	a, #0x80
	jr	Z, 00106$
	jr	00109$
;game.c:17: case J_LEFT:
00101$:
;c:/gbdk/include/gb/gb.h:1088: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;c:/gbdk/include/gb/gb.h:1089: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0xfb
	ld	(bc), a
;game.c:19: break;
	jr	00109$
;game.c:20: case J_RIGHT:
00102$:
;c:/gbdk/include/gb/gb.h:1088: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1089: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0x05
	ld	(bc), a
;game.c:22: break;
	jr	00109$
;game.c:23: case J_UP:
00103$:
;c:/gbdk/include/gb/gb.h:1088: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1089: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0xfb
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;game.c:25: break;
	jr	00109$
;game.c:26: case J_DOWN:
00104$:
;c:/gbdk/include/gb/gb.h:1088: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1089: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0x05
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;game.c:28: break;
	jr	00109$
;game.c:29: case J_SELECT:
00105$:
;game.c:30: sprintf(str, "SELECT");
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
;game.c:32: break;
	jr	00109$
;game.c:33: case J_START:
00106$:
;game.c:34: sprintf(str, "START");
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #___str_1
	push	hl
	push	de
	call	_sprintf
	add	sp, #4
	call	_puts
	add	sp, #2
;game.c:36: break;
	jr	00109$
;game.c:37: case J_A:
00107$:
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;game.c:39: break;
	jr	00109$
;game.c:40: case J_B:
00108$:
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x01
;game.c:43: }
00109$:
;game.c:44: delay(100);
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
	jp	00111$
;game.c:46: }
	add	sp, #80
	ret
___str_0:
	.ascii "SELECT"
	.db 0x00
___str_1:
	.ascii "START"
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
