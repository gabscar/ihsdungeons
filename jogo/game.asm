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
	.globl _setPositionGameCharacter2
	.globl _setPositionGameCharacter
	.globl _setupSubBoss
	.globl _setupHero
	.globl _setupEnemy
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _waitpad
	.globl _joypad
	.globl _spritesize
	.globl _spriteId
	.globl _MiniBossOgro
	.globl _ghost
	.globl _protagonista
	.globl _performantdelay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_protagonista::
	.ds 80
_ghost::
	.ds 64
_MiniBossOgro::
	.ds 144
_spriteId::
	.ds 1
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
;../design/protagonista.c:26: unsigned char protagonista[] =
	ld	hl, #_protagonista
	ld	(hl), #0x0f
	ld	hl, #(_protagonista + 0x0001)
	ld	(hl), #0x0f
	ld	hl, #(_protagonista + 0x0002)
	ld	(hl), #0x11
	ld	hl, #(_protagonista + 0x0003)
	ld	(hl), #0x1e
	ld	hl, #(_protagonista + 0x0004)
	ld	(hl), #0x13
	ld	hl, #(_protagonista + 0x0005)
	ld	(hl), #0x1c
	ld	hl, #(_protagonista + 0x0006)
	ld	(hl), #0x7f
	ld	hl, #(_protagonista + 0x0007)
	ld	(hl), #0x7f
	ld	hl, #(_protagonista + 0x0008)
	ld	(hl), #0x10
	ld	hl, #(_protagonista + 0x0009)
	ld	(hl), #0x1f
	ld	hl, #(_protagonista + 0x000a)
	ld	(hl), #0x1c
	ld	hl, #(_protagonista + 0x000b)
	ld	(hl), #0x13
	ld	hl, #(_protagonista + 0x000c)
	ld	(hl), #0x0f
	ld	hl, #(_protagonista + 0x000d)
	ld	(hl), #0x0f
	ld	hl, #(_protagonista + 0x000e)
	ld	(hl), #0x35
	ld	hl, #(_protagonista + 0x000f)
	ld	(hl), #0x3a
	ld	hl, #(_protagonista + 0x0010)
	ld	(hl), #0xf0
	ld	hl, #(_protagonista + 0x0011)
	ld	(hl), #0xf0
	ld	hl, #(_protagonista + 0x0012)
	ld	(hl), #0xf8
	ld	hl, #(_protagonista + 0x0013)
	ld	(hl), #0x08
	ld	hl, #(_protagonista + 0x0014)
	ld	(hl), #0xf8
	ld	hl, #(_protagonista + 0x0015)
	ld	(hl), #0x08
	ld	hl, #(_protagonista + 0x0016)
	ld	(hl), #0xfe
	ld	hl, #(_protagonista + 0x0017)
	ld	(hl), #0xfe
	ld	hl, #(_protagonista + 0x0018)
	ld	(hl), #0x08
	ld	hl, #(_protagonista + 0x0019)
	ld	(hl), #0xf8
	ld	hl, #(_protagonista + 0x001a)
	ld	(hl), #0x38
	ld	hl, #(_protagonista + 0x001b)
	ld	(hl), #0xc8
	ld	hl, #(_protagonista + 0x001c)
	ld	(hl), #0xf0
	ld	hl, #(_protagonista + 0x001d)
	ld	(hl), #0xf0
	ld	hl, #(_protagonista + 0x001e)
	ld	(hl), #0x5c
	ld	hl, #(_protagonista + 0x001f)
	ld	(hl), #0xac
	ld	hl, #(_protagonista + 0x0020)
	ld	(hl), #0x2a
	ld	hl, #(_protagonista + 0x0021)
	ld	(hl), #0x35
	ld	hl, #(_protagonista + 0x0022)
	ld	(hl), #0x35
	ld	hl, #(_protagonista + 0x0023)
	ld	(hl), #0x2e
	ld	hl, #(_protagonista + 0x0024)
	ld	(hl), #0x2e
	ld	hl, #(_protagonista + 0x0025)
	ld	(hl), #0x35
	ld	hl, #(_protagonista + 0x0026)
	ld	(hl), #0x35
	ld	hl, #(_protagonista + 0x0027)
	ld	(hl), #0x2e
	ld	hl, #(_protagonista + 0x0028)
	ld	(hl), #0x1f
	ld	hl, #(_protagonista + 0x0029)
	ld	(hl), #0x1f
	ld	hl, #(_protagonista + 0x002a)
	ld	(hl), #0x0a
	ld	hl, #(_protagonista + 0x002b)
	ld	(hl), #0x0e
	ld	hl, #(_protagonista + 0x002c)
	ld	(hl), #0x0a
	ld	hl, #(_protagonista + 0x002d)
	ld	(hl), #0x0e
	ld	hl, #(_protagonista + 0x002e)
	ld	(hl), #0x0e
	ld	hl, #(_protagonista + 0x002f)
	ld	(hl), #0x0e
	ld	hl, #(_protagonista + 0x0030)
	ld	(hl), #0xac
	ld	hl, #(_protagonista + 0x0031)
	ld	(hl), #0x54
	ld	hl, #(_protagonista + 0x0032)
	ld	(hl), #0x74
	ld	hl, #(_protagonista + 0x0033)
	ld	(hl), #0xac
	ld	hl, #(_protagonista + 0x0034)
	ld	(hl), #0xac
	ld	hl, #(_protagonista + 0x0035)
	ld	(hl), #0x74
	ld	hl, #(_protagonista + 0x0036)
	ld	(hl), #0x74
	ld	hl, #(_protagonista + 0x0037)
	ld	(hl), #0xac
	ld	hl, #(_protagonista + 0x0038)
	ld	(hl), #0xf8
	ld	hl, #(_protagonista + 0x0039)
	ld	(hl), #0xf8
	ld	hl, #(_protagonista + 0x003a)
	ld	(hl), #0x50
	ld	hl, #(_protagonista + 0x003b)
	ld	(hl), #0x70
	ld	hl, #(_protagonista + 0x003c)
	ld	(hl), #0x50
	ld	hl, #(_protagonista + 0x003d)
	ld	(hl), #0x70
	ld	hl, #(_protagonista + 0x003e)
	ld	(hl), #0x70
	ld	hl, #(_protagonista + 0x003f)
	ld	(hl), #0x70
	ld	hl, #(_protagonista + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_protagonista + 0x004f)
	ld	(hl), #0x00
;../design/ghost.c:26: unsigned char ghost[] =
	ld	hl, #_ghost
	ld	(hl), #0x5f
	ld	hl, #(_ghost + 0x0001)
	ld	(hl), #0x5f
	ld	hl, #(_ghost + 0x0002)
	ld	(hl), #0x3f
	ld	hl, #(_ghost + 0x0003)
	ld	(hl), #0x30
	ld	hl, #(_ghost + 0x0004)
	ld	(hl), #0x7f
	ld	hl, #(_ghost + 0x0005)
	ld	(hl), #0x60
	ld	hl, #(_ghost + 0x0006)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0007)
	ld	(hl), #0x80
	ld	hl, #(_ghost + 0x0008)
	ld	(hl), #0xef
	ld	hl, #(_ghost + 0x0009)
	ld	(hl), #0x90
	ld	hl, #(_ghost + 0x000a)
	ld	(hl), #0xe7
	ld	hl, #(_ghost + 0x000b)
	ld	(hl), #0x98
	ld	hl, #(_ghost + 0x000c)
	ld	(hl), #0xeb
	ld	hl, #(_ghost + 0x000d)
	ld	(hl), #0x94
	ld	hl, #(_ghost + 0x000e)
	ld	(hl), #0xe1
	ld	hl, #(_ghost + 0x000f)
	ld	(hl), #0x9e
	ld	hl, #(_ghost + 0x0010)
	ld	(hl), #0xfa
	ld	hl, #(_ghost + 0x0011)
	ld	(hl), #0xfa
	ld	hl, #(_ghost + 0x0012)
	ld	(hl), #0xfc
	ld	hl, #(_ghost + 0x0013)
	ld	(hl), #0x0c
	ld	hl, #(_ghost + 0x0014)
	ld	(hl), #0xfe
	ld	hl, #(_ghost + 0x0015)
	ld	(hl), #0x06
	ld	hl, #(_ghost + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0017)
	ld	(hl), #0x01
	ld	hl, #(_ghost + 0x0018)
	ld	(hl), #0xf7
	ld	hl, #(_ghost + 0x0019)
	ld	(hl), #0x09
	ld	hl, #(_ghost + 0x001a)
	ld	(hl), #0xe7
	ld	hl, #(_ghost + 0x001b)
	ld	(hl), #0x19
	ld	hl, #(_ghost + 0x001c)
	ld	(hl), #0xd7
	ld	hl, #(_ghost + 0x001d)
	ld	(hl), #0x29
	ld	hl, #(_ghost + 0x001e)
	ld	(hl), #0x87
	ld	hl, #(_ghost + 0x001f)
	ld	(hl), #0x79
	ld	hl, #(_ghost + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0021)
	ld	(hl), #0x80
	ld	hl, #(_ghost + 0x0022)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0023)
	ld	(hl), #0x80
	ld	hl, #(_ghost + 0x0024)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0025)
	ld	(hl), #0x80
	ld	hl, #(_ghost + 0x0026)
	ld	(hl), #0xbf
	ld	hl, #(_ghost + 0x0027)
	ld	(hl), #0xc0
	ld	hl, #(_ghost + 0x0028)
	ld	(hl), #0x9c
	ld	hl, #(_ghost + 0x0029)
	ld	(hl), #0xe3
	ld	hl, #(_ghost + 0x002a)
	ld	(hl), #0x88
	ld	hl, #(_ghost + 0x002b)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x002c)
	ld	(hl), #0xd5
	ld	hl, #(_ghost + 0x002d)
	ld	(hl), #0xf7
	ld	hl, #(_ghost + 0x002e)
	ld	(hl), #0xa2
	ld	hl, #(_ghost + 0x002f)
	ld	(hl), #0xa2
	ld	hl, #(_ghost + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0031)
	ld	(hl), #0x01
	ld	hl, #(_ghost + 0x0032)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0033)
	ld	(hl), #0x01
	ld	hl, #(_ghost + 0x0034)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x0035)
	ld	(hl), #0x01
	ld	hl, #(_ghost + 0x0036)
	ld	(hl), #0xfd
	ld	hl, #(_ghost + 0x0037)
	ld	(hl), #0x03
	ld	hl, #(_ghost + 0x0038)
	ld	(hl), #0xf9
	ld	hl, #(_ghost + 0x0039)
	ld	(hl), #0x07
	ld	hl, #(_ghost + 0x003a)
	ld	(hl), #0x21
	ld	hl, #(_ghost + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_ghost + 0x003c)
	ld	(hl), #0x55
	ld	hl, #(_ghost + 0x003d)
	ld	(hl), #0xdf
	ld	hl, #(_ghost + 0x003e)
	ld	(hl), #0x8b
	ld	hl, #(_ghost + 0x003f)
	ld	(hl), #0x8b
;../design/MiniBossOgro.c:26: unsigned char MiniBossOgro[] =
	ld	hl, #_MiniBossOgro
	ld	(hl), #0x60
	ld	hl, #(_MiniBossOgro + 0x0001)
	ld	(hl), #0x60
	ld	hl, #(_MiniBossOgro + 0x0002)
	ld	(hl), #0x58
	ld	hl, #(_MiniBossOgro + 0x0003)
	ld	(hl), #0x78
	ld	hl, #(_MiniBossOgro + 0x0004)
	ld	(hl), #0x4e
	ld	hl, #(_MiniBossOgro + 0x0005)
	ld	(hl), #0x7e
	ld	hl, #(_MiniBossOgro + 0x0006)
	ld	(hl), #0x41
	ld	hl, #(_MiniBossOgro + 0x0007)
	ld	(hl), #0x7f
	ld	hl, #(_MiniBossOgro + 0x0008)
	ld	(hl), #0x20
	ld	hl, #(_MiniBossOgro + 0x0009)
	ld	(hl), #0x3f
	ld	hl, #(_MiniBossOgro + 0x000a)
	ld	(hl), #0x1c
	ld	hl, #(_MiniBossOgro + 0x000b)
	ld	(hl), #0x1f
	ld	hl, #(_MiniBossOgro + 0x000c)
	ld	(hl), #0x04
	ld	hl, #(_MiniBossOgro + 0x000d)
	ld	(hl), #0x07
	ld	hl, #(_MiniBossOgro + 0x000e)
	ld	(hl), #0x04
	ld	hl, #(_MiniBossOgro + 0x000f)
	ld	(hl), #0x07
	ld	hl, #(_MiniBossOgro + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0014)
	ld	(hl), #0x3f
	ld	hl, #(_MiniBossOgro + 0x0015)
	ld	(hl), #0x3f
	ld	hl, #(_MiniBossOgro + 0x0016)
	ld	(hl), #0xc0
	ld	hl, #(_MiniBossOgro + 0x0017)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0019)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x001a)
	ld	(hl), #0x1f
	ld	hl, #(_MiniBossOgro + 0x001b)
	ld	(hl), #0xe0
	ld	hl, #(_MiniBossOgro + 0x001c)
	ld	(hl), #0x1f
	ld	hl, #(_MiniBossOgro + 0x001d)
	ld	(hl), #0xe6
	ld	hl, #(_MiniBossOgro + 0x001e)
	ld	(hl), #0x1f
	ld	hl, #(_MiniBossOgro + 0x001f)
	ld	(hl), #0xe6
	ld	hl, #(_MiniBossOgro + 0x0020)
	ld	(hl), #0x06
	ld	hl, #(_MiniBossOgro + 0x0021)
	ld	(hl), #0x06
	ld	hl, #(_MiniBossOgro + 0x0022)
	ld	(hl), #0x09
	ld	hl, #(_MiniBossOgro + 0x0023)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x0024)
	ld	(hl), #0x09
	ld	hl, #(_MiniBossOgro + 0x0025)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x0026)
	ld	(hl), #0xf9
	ld	hl, #(_MiniBossOgro + 0x0027)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0028)
	ld	(hl), #0x01
	ld	hl, #(_MiniBossOgro + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x002a)
	ld	(hl), #0x1e
	ld	hl, #(_MiniBossOgro + 0x002b)
	ld	(hl), #0xfe
	ld	hl, #(_MiniBossOgro + 0x002c)
	ld	(hl), #0x10
	ld	hl, #(_MiniBossOgro + 0x002d)
	ld	(hl), #0xf0
	ld	hl, #(_MiniBossOgro + 0x002e)
	ld	(hl), #0x10
	ld	hl, #(_MiniBossOgro + 0x002f)
	ld	(hl), #0xf0
	ld	hl, #(_MiniBossOgro + 0x0030)
	ld	(hl), #0x02
	ld	hl, #(_MiniBossOgro + 0x0031)
	ld	(hl), #0x03
	ld	hl, #(_MiniBossOgro + 0x0032)
	ld	(hl), #0x02
	ld	hl, #(_MiniBossOgro + 0x0033)
	ld	(hl), #0x03
	ld	hl, #(_MiniBossOgro + 0x0034)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x0035)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x0036)
	ld	(hl), #0x13
	ld	hl, #(_MiniBossOgro + 0x0037)
	ld	(hl), #0x1d
	ld	hl, #(_MiniBossOgro + 0x0038)
	ld	(hl), #0x22
	ld	hl, #(_MiniBossOgro + 0x0039)
	ld	(hl), #0x3d
	ld	hl, #(_MiniBossOgro + 0x003a)
	ld	(hl), #0x24
	ld	hl, #(_MiniBossOgro + 0x003b)
	ld	(hl), #0x3b
	ld	hl, #(_MiniBossOgro + 0x003c)
	ld	(hl), #0x28
	ld	hl, #(_MiniBossOgro + 0x003d)
	ld	(hl), #0x37
	ld	hl, #(_MiniBossOgro + 0x003e)
	ld	(hl), #0x24
	ld	hl, #(_MiniBossOgro + 0x003f)
	ld	(hl), #0x3b
	ld	hl, #(_MiniBossOgro + 0x0040)
	ld	(hl), #0x1f
	ld	hl, #(_MiniBossOgro + 0x0041)
	ld	(hl), #0xe0
	ld	hl, #(_MiniBossOgro + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0043)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0044)
	ld	(hl), #0x1f
	ld	hl, #(_MiniBossOgro + 0x0045)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0046)
	ld	(hl), #0x80
	ld	hl, #(_MiniBossOgro + 0x0047)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0048)
	ld	(hl), #0x7f
	ld	hl, #(_MiniBossOgro + 0x0049)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x004b)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x004d)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x004f)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0050)
	ld	(hl), #0x10
	ld	hl, #(_MiniBossOgro + 0x0051)
	ld	(hl), #0xf0
	ld	hl, #(_MiniBossOgro + 0x0052)
	ld	(hl), #0x10
	ld	hl, #(_MiniBossOgro + 0x0053)
	ld	(hl), #0xf0
	ld	hl, #(_MiniBossOgro + 0x0054)
	ld	(hl), #0x38
	ld	hl, #(_MiniBossOgro + 0x0055)
	ld	(hl), #0xf8
	ld	hl, #(_MiniBossOgro + 0x0056)
	ld	(hl), #0x34
	ld	hl, #(_MiniBossOgro + 0x0057)
	ld	(hl), #0xec
	ld	hl, #(_MiniBossOgro + 0x0058)
	ld	(hl), #0xd2
	ld	hl, #(_MiniBossOgro + 0x0059)
	ld	(hl), #0xee
	ld	hl, #(_MiniBossOgro + 0x005a)
	ld	(hl), #0x12
	ld	hl, #(_MiniBossOgro + 0x005b)
	ld	(hl), #0xee
	ld	hl, #(_MiniBossOgro + 0x005c)
	ld	(hl), #0x12
	ld	hl, #(_MiniBossOgro + 0x005d)
	ld	(hl), #0xee
	ld	hl, #(_MiniBossOgro + 0x005e)
	ld	(hl), #0x12
	ld	hl, #(_MiniBossOgro + 0x005f)
	ld	(hl), #0xee
	ld	hl, #(_MiniBossOgro + 0x0060)
	ld	(hl), #0x2f
	ld	hl, #(_MiniBossOgro + 0x0061)
	ld	(hl), #0x30
	ld	hl, #(_MiniBossOgro + 0x0062)
	ld	(hl), #0x1e
	ld	hl, #(_MiniBossOgro + 0x0063)
	ld	(hl), #0x11
	ld	hl, #(_MiniBossOgro + 0x0064)
	ld	(hl), #0x1a
	ld	hl, #(_MiniBossOgro + 0x0065)
	ld	(hl), #0x15
	ld	hl, #(_MiniBossOgro + 0x0066)
	ld	(hl), #0x0d
	ld	hl, #(_MiniBossOgro + 0x0067)
	ld	(hl), #0x0a
	ld	hl, #(_MiniBossOgro + 0x0068)
	ld	(hl), #0x0a
	ld	hl, #(_MiniBossOgro + 0x0069)
	ld	(hl), #0x0d
	ld	hl, #(_MiniBossOgro + 0x006a)
	ld	(hl), #0x08
	ld	hl, #(_MiniBossOgro + 0x006b)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x006c)
	ld	(hl), #0x08
	ld	hl, #(_MiniBossOgro + 0x006d)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x006e)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x006f)
	ld	(hl), #0x0f
	ld	hl, #(_MiniBossOgro + 0x0070)
	ld	(hl), #0xdf
	ld	hl, #(_MiniBossOgro + 0x0071)
	ld	(hl), #0x20
	ld	hl, #(_MiniBossOgro + 0x0072)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0073)
	ld	(hl), #0x0c
	ld	hl, #(_MiniBossOgro + 0x0074)
	ld	(hl), #0xde
	ld	hl, #(_MiniBossOgro + 0x0075)
	ld	(hl), #0x21
	ld	hl, #(_MiniBossOgro + 0x0076)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_MiniBossOgro + 0x0078)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x0079)
	ld	(hl), #0xff
	ld	hl, #(_MiniBossOgro + 0x007a)
	ld	(hl), #0x80
	ld	hl, #(_MiniBossOgro + 0x007b)
	ld	(hl), #0x80
	ld	hl, #(_MiniBossOgro + 0x007c)
	ld	(hl), #0x40
	ld	hl, #(_MiniBossOgro + 0x007d)
	ld	(hl), #0xc0
	ld	hl, #(_MiniBossOgro + 0x007e)
	ld	(hl), #0xc0
	ld	hl, #(_MiniBossOgro + 0x007f)
	ld	(hl), #0xc0
	ld	hl, #(_MiniBossOgro + 0x0080)
	ld	(hl), #0xfe
	ld	hl, #(_MiniBossOgro + 0x0081)
	ld	(hl), #0x02
	ld	hl, #(_MiniBossOgro + 0x0082)
	ld	(hl), #0xfc
	ld	hl, #(_MiniBossOgro + 0x0083)
	ld	(hl), #0x04
	ld	hl, #(_MiniBossOgro + 0x0084)
	ld	(hl), #0xfc
	ld	hl, #(_MiniBossOgro + 0x0085)
	ld	(hl), #0x0c
	ld	hl, #(_MiniBossOgro + 0x0086)
	ld	(hl), #0xa8
	ld	hl, #(_MiniBossOgro + 0x0087)
	ld	(hl), #0x58
	ld	hl, #(_MiniBossOgro + 0x0088)
	ld	(hl), #0xf8
	ld	hl, #(_MiniBossOgro + 0x0089)
	ld	(hl), #0x88
	ld	hl, #(_MiniBossOgro + 0x008a)
	ld	(hl), #0x88
	ld	hl, #(_MiniBossOgro + 0x008b)
	ld	(hl), #0xf8
	ld	hl, #(_MiniBossOgro + 0x008c)
	ld	(hl), #0x9c
	ld	hl, #(_MiniBossOgro + 0x008d)
	ld	(hl), #0xe4
	ld	hl, #(_MiniBossOgro + 0x008e)
	ld	(hl), #0xfc
	ld	hl, #(_MiniBossOgro + 0x008f)
	ld	(hl), #0xfc
;personagem.c:3: UINT8 spriteId=0;
	ld	hl, #_spriteId
	ld	(hl), #0x00
;movimentacao.c:2: UBYTE spritesize = 8;
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
;personagem.c:34: void setupEnemy(struct personagem *enemy,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupEnemy
; ---------------------------------
_setupEnemy::
	add	sp, #-2
;personagem.c:35: enemy->x = 0;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:36: enemy->y = 0;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:37: enemy->width = 16;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:38: enemy->height = 16;
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:39: enemy->ativo = 0;
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:41: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
00104$:
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NC, 00106$
;personagem.c:42: set_sprite_tile(spriteId, i);
	ld	hl, #_spriteId
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
;personagem.c:43: enemy->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:44: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:45: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:41: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:47: }
	add	sp, #2
	ret
;personagem.c:49: void setupHero(struct personagem *hero,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupHero
; ---------------------------------
_setupHero::
	add	sp, #-2
;personagem.c:50: hero->x = 80;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x50
;personagem.c:51: hero->y = 128;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x80
;personagem.c:52: hero->width = 16;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:53: hero->height = 16;
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:54: hero->ativo = 0;
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:56: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
00104$:
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NC, 00106$
;personagem.c:57: set_sprite_tile(spriteId, i);
	ld	hl, #_spriteId
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
;personagem.c:58: hero->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:59: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:60: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:56: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:62: }
	add	sp, #2
	ret
;personagem.c:64: void setupSubBoss(struct subBoss *miniBoss,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupSubBoss
; ---------------------------------
_setupSubBoss::
	add	sp, #-2
;personagem.c:65: miniBoss->x = 0;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:66: miniBoss->y = 0;
	ld	hl, #0x000a
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:67: miniBoss->width = 24;
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0x18
;personagem.c:68: miniBoss->height = 24;
	ld	hl, #0x000e
	add	hl, bc
	ld	(hl), #0x18
;personagem.c:69: miniBoss->ativo = 0;
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:71: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
00104$:
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NC, 00106$
;personagem.c:72: set_sprite_tile(spriteId, i);
	ld	hl, #_spriteId
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
;personagem.c:73: miniBoss->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:74: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:75: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:71: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:77: }
	add	sp, #2
	ret
;movimentacao.c:3: void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter
; ---------------------------------
_setPositionGameCharacter::
	add	sp, #-3
;movimentacao.c:4: move_sprite(character->spriteIds[0], x, y);
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
;movimentacao.c:5: move_sprite(character->spriteIds[1], x + spritesize, y);
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
;movimentacao.c:6: move_sprite(character->spriteIds[2], x, y + spritesize);
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
;movimentacao.c:7: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
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
;movimentacao.c:7: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
;movimentacao.c:8: }
	add	sp, #3
	ret
;movimentacao.c:10: void setPositionGameCharacter2(struct subBoss* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter2
; ---------------------------------
_setPositionGameCharacter2::
	add	sp, #-5
;movimentacao.c:11: move_sprite(character->spriteIds[0], x, y);
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,#7
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
;movimentacao.c:12: move_sprite(character->spriteIds[1], x + spritesize, y);
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#4
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
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:13: move_sprite(character->spriteIds[2], x + 2*spritesize, y);
	ld	a, (#_spritesize)
	add	a, a
	ld	c, a
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	(hl), a
	add	a,c
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#4
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
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:15: move_sprite(character->spriteIds[3], x, y + spritesize);
	ldhl	sp,	#0
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:16: move_sprite(character->spriteIds[4], x + spritesize, y + spritesize);
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#3
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	b, a
	ld	hl, #0x0004
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#4
	ld	(hl), b
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
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:17: move_sprite(character->spriteIds[5], x + 2*spritesize, y + spritesize);
	ldhl	sp,	#0
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ld	a, (#_spritesize)
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	ld	b, a
	ld	hl, #0x0005
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#4
	ld	(hl), b
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
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:19: move_sprite(character->spriteIds[6], x, y + 2*spritesize);
	ld	a, (#_spritesize)
	add	a, a
	ld	c, a
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	add	a,c
	dec	hl
	ld	(hl), a
	ld	hl, #0x0006
	add	hl, de
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
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:20: move_sprite(character->spriteIds[7], x + spritesize, y + 2*spritesize);
	ld	a, (#_spritesize)
	add	a, a
	ldhl	sp,	#4
	add	a, (hl)
	dec	hl
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	b, a
	ld	hl, #0x0007
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#1
	ld	(hl), b
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
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:21: move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
	ld	a, (#_spritesize)
	add	a, a
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl)
	add	a, c
	ld	b, a
	dec	hl
	dec	hl
	ld	a, (hl)
	add	a, c
	ld	c, a
	ld	hl, #0x0008
	add	hl, de
	ld	e, (hl)
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
;movimentacao.c:21: move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
;movimentacao.c:24: }
	add	sp, #5
	ret
;game.c:17: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-46
;game.c:19: set_sprite_data(0, 4, ghost);
	ld	hl, #_ghost
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;game.c:20: set_sprite_data(4, 4, protagonista);
	ld	hl, #_protagonista
	push	hl
	ld	de, #0x0404
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:21: set_sprite_data(8, 9, MiniBossOgro);
	ld	hl, #_MiniBossOgro
	push	hl
	ld	de, #0x0908
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:25: setupEnemy(&inimigo1,0,4);
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	a, #0x04
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_setupEnemy
	add	sp, #4
	pop	bc
;game.c:26: setPositionGameCharacter(&inimigo1,100,100);
	ld	de, #0x6464
	push	de
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:29: setupHero(&protagonista,4,8);
	ldhl	sp,	#10
	ld	a, l
	ld	d, h
	ldhl	sp,	#35
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0804
	push	de
	push	bc
	call	_setupHero
	add	sp, #4
;game.c:30: setPositionGameCharacter(&protagonista,80,128);
	ldhl	sp,#35
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x8050
	push	de
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:33: setupSubBoss(&miniboss1,8,17);
	ldhl	sp,	#20
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #0x1108
	push	hl
	push	de
	call	_setupSubBoss
	add	sp, #4
	pop	bc
;game.c:34: setPositionGameCharacter2(&miniboss1,40,80);
	ld	de, #0x5028
	push	de
	push	bc
	call	_setPositionGameCharacter2
	add	sp, #4
;game.c:36: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;game.c:37: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;game.c:38: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;game.c:40: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;game.c:42: while(1){
00116$:
;game.c:44: if(joypad() & J_LEFT){
	call	_joypad
	ld	c, e
;game.c:45: (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
;c
	ldhl	sp,#35
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#39
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#38
;game.c:48: setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
;c
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#41
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#40
	ld	(hl), a
;game.c:44: if(joypad() & J_LEFT){
	bit	1, c
	jr	Z, 00102$
;game.c:45: (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
	ldhl	sp,#37
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	e, c
	ld	d, #0x00
	ld	a, e
	add	a, #0xf6
	ld	a, d
	adc	a, #0xff
	bit	7,a
	jr	Z, 00120$
	ldhl	sp,	#37
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00121$
00120$:
	dec	c
	dec	c
	ldhl	sp,	#37
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00121$:
;game.c:48: setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
	ldhl	sp,#39
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00102$:
;game.c:51: if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00104$
;game.c:52: (protagonista.x+8) >= 160 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x+2);
	ldhl	sp,#37
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#41
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl), a
	xor	a, a
	inc	hl
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#46
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#45
	ld	(hl-), a
	ld	a, (hl)
	sub	a, #0xa0
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00175$
	bit	7, d
	jr	NZ, 00176$
	cp	a, a
	jr	00176$
00175$:
	bit	7, d
	jr	Z, 00176$
	scf
00176$:
	jr	C, 00122$
	ldhl	sp,#37
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#41
	ld	a, (hl)
	ld	(de), a
	jr	00123$
00122$:
	ldhl	sp,	#41
	ld	a, (hl)
	ldhl	sp,	#45
	ld	(hl), a
	ld	c, (hl)
	inc	c
	inc	c
	ldhl	sp,	#37
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00123$:
;game.c:54: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ldhl	sp,#39
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00104$:
;game.c:57: if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00106$
;game.c:59: (protagonista.y-16) <= 20 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y-2);
	ldhl	sp,#39
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	e, #0x00
	add	a, #0xf0
	ld	b, a
	ld	a, e
	adc	a, #0xff
	ld	l, a
	ld	e, l
	ld	d, #0x00
	ld	a, #0x14
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	bit	7, e
	jr	Z, 00178$
	bit	7, d
	jr	NZ, 00179$
	cp	a, a
	jr	00179$
00178$:
	bit	7, d
	jr	Z, 00179$
	scf
00179$:
	jr	C, 00124$
	ldhl	sp,	#39
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00125$
00124$:
	dec	c
	dec	c
	ldhl	sp,	#39
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00125$:
;game.c:60: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ldhl	sp,#39
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00106$:
;game.c:63: if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00108$
;game.c:65: (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
	ldhl	sp,#39
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	sub	a, #0x80
	jr	C, 00126$
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00127$
00126$:
	inc	c
	inc	c
	ldhl	sp,	#39
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00127$:
;game.c:66: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ldhl	sp,#39
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00108$:
;game.c:69: if(joypad() & J_A){
	call	_joypad
;game.c:96: if(joypad() & J_SELECT){
	call	_joypad
;game.c:103: if(joypad() & J_START){
	call	_joypad
;game.c:111: performantdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00116$
;game.c:115: }
	add	sp, #46
	ret
;game.c:117: void performantdelay(UINT8 numloops){ // nova funcao delay
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;game.c:119: for(i = 0; i < numloops; i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;game.c:120: wait_vbl_done();
	call	_wait_vbl_done
;game.c:119: for(i = 0; i < numloops; i++){
	inc	c
;game.c:122: }
	jr	00103$
	.area _CODE
	.area _CABS (ABS)
