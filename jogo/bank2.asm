;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module bank2
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SplashScreen
	.globl _SplashTiles
	.globl b_bank_2
	.globl _bank_2
	.globl _puts
	.globl _some_const_var_4
	.globl ___bank_srcfile4
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_3
;bank2.c:16: void bank_2() BANKED /* In ROM bank 2 */
;	---------------------------------
; Function bank_2
; ---------------------------------
	b_bank_2	= 3
_bank_2::
;bank2.c:18: puts("passou o banco");
	ld	hl, #___str_0
	push	hl
	call	_puts
	add	sp, #2
;bank2.c:20: }
	ret
___bank_srcfile4	=	0x0003
_some_const_var_4:
	.db #0x04	; 4
___str_0:
	.ascii "passou o banco"
	.db 0x00
	.area _CODE_3
_SplashTiles:
	.db #0xcf	; 207
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xf9	; 249
	.db #0x06	; 6
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xf3	; 243
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x9f	; 159
	.db #0x63	; 99	'c'
	.db #0xfd	; 253
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0xc4	; 196
	.db #0xff	; 255
	.db #0x24	; 36
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0x8f	; 143
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x7c	; 124
	.db #0xc7	; 199
	.db #0x7b	; 123
	.db #0xea	; 234
	.db #0x7f	; 127
	.db #0xcb	; 203
	.db #0xbb	; 187
	.db #0x76	; 118	'v'
	.db #0xf7	; 247
	.db #0x0c	; 12
	.db #0xff	; 255
	.db #0x70	; 112	'p'
	.db #0xff	; 255
	.db #0x28	; 40
	.db #0xfb	; 251
	.db #0x0c	; 12
	.db #0xfb	; 251
	.db #0x1c	; 28
	.db #0xfa	; 250
	.db #0x0d	; 13
	.db #0xf8	; 248
	.db #0x0b	; 11
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x70	; 112	'p'
	.db #0xff	; 255
	.db #0x28	; 40
	.db #0xfb	; 251
	.db #0x0c	; 12
	.db #0xfb	; 251
	.db #0x1c	; 28
	.db #0xfa	; 250
	.db #0x0d	; 13
	.db #0xf8	; 248
	.db #0x0b	; 11
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x3b	; 59
	.db #0xe1	; 225
	.db #0x3e	; 62
	.db #0xef	; 239
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0x70	; 112	'p'
	.db #0x9e	; 158
	.db #0xe1	; 225
	.db #0x98	; 152
	.db #0xa7	; 167
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0xe7	; 231
	.db #0x1c	; 28
	.db #0xe7	; 231
	.db #0x1e	; 30
	.db #0xe3	; 227
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0xf7	; 247
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0x06	; 6
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xe6	; 230
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x60	; 96
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x66	; 102	'f'
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0xf0	; 240
	.db #0x7c	; 124
	.db #0xc3	; 195
	.db #0x9f	; 159
	.db #0xe0	; 224
	.db #0x79	; 121	'y'
	.db #0xc6	; 198
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0x5f	; 95
	.db #0xe0	; 224
	.db #0xb3	; 179
	.db #0xcc	; 204
	.db #0x7c	; 124
	.db #0xc3	; 195
	.db #0xcf	; 207
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xf9	; 249
	.db #0x06	; 6
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xaa	; 170
	.db #0xff	; 255
	.db #0x55	; 85	'U'
	.db #0xff	; 255
	.db #0xce	; 206
	.db #0x33	; 51	'3'
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0x1e	; 30
	.db #0xe3	; 227
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0x03	; 3
	.db #0x1d	; 29
	.db #0xe3	; 227
	.db #0xf2	; 242
	.db #0x0f	; 15
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0xaa	; 170
	.db #0xff	; 255
	.db #0x55	; 85	'U'
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0x60	; 96
	.db #0xf9	; 249
	.db #0x06	; 6
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xf3	; 243
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xdc	; 220
	.db #0xff	; 255
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xf1	; 241
	.db #0x1e	; 30
	.db #0xf3	; 243
	.db #0x1c	; 28
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0xfc	; 252
	.db #0x13	; 19
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xf5	; 245
	.db #0x3a	; 58
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xc8	; 200
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x5f	; 95
	.db #0xac	; 172
	.db #0xea	; 234
	.db #0x35	; 53	'5'
	.db #0xf5	; 245
	.db #0x2e	; 46
	.db #0xee	; 238
	.db #0x35	; 53	'5'
	.db #0xf5	; 245
	.db #0x2e	; 46
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xfb	; 251
	.db #0x0e	; 14
	.db #0xfb	; 251
	.db #0x0e	; 14
	.db #0xff	; 255
	.db #0x0e	; 14
	.db #0xaf	; 175
	.db #0x54	; 84	'T'
	.db #0x77	; 119	'w'
	.db #0xac	; 172
	.db #0xaf	; 175
	.db #0x74	; 116	't'
	.db #0x77	; 119	'w'
	.db #0xac	; 172
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xdf	; 223
	.db #0x70	; 112	'p'
	.db #0xdf	; 223
	.db #0x70	; 112	'p'
	.db #0xff	; 255
	.db #0x70	; 112	'p'
_SplashScreen:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x10	; 16
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x17	; 23
	.db #0x0e	; 14
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
