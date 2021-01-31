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
	.globl _moveBala
	.globl _setPositionGameCharacter2
	.globl _setPositionGameCharacter
	.globl _sumScore
	.globl _setupScore
	.globl _setupBala
	.globl _setupSubBoss
	.globl _setupHero
	.globl _setupEnemy
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpad
	.globl _joypad
	.globl _spritesize
	.globl _spritesizes
	.globl _spriteId
	.globl _score
	.globl _simpleMap
	.globl _backTiles
	.globl _projetil
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
_projetil::
	.ds 32
_backTiles::
	.ds 128
_simpleMap::
	.ds 720
_score::
	.ds 256
_spriteId::
	.ds 1
_spritesizes::
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
;../design/projetil.c:26: unsigned char projetil[] =
	ld	hl, #_projetil
	ld	(hl), #0x40
	ld	hl, #(_projetil + 0x0001)
	ld	(hl), #0x40
	ld	hl, #(_projetil + 0x0002)
	ld	(hl), #0xa0
	ld	hl, #(_projetil + 0x0003)
	ld	(hl), #0xe0
	ld	hl, #(_projetil + 0x0004)
	ld	(hl), #0xe0
	ld	hl, #(_projetil + 0x0005)
	ld	(hl), #0xe0
	ld	hl, #(_projetil + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0014)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x001a)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_projetil + 0x001f)
	ld	(hl), #0x00
;../design/backTiles.c:26: unsigned char backTiles[] =
	ld	hl, #_backTiles
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0012)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0023)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0025)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0027)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x002b)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x002d)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x002f)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0032)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0033)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0034)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0035)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0036)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0037)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0038)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0039)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x003a)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x003c)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x003d)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_backTiles + 0x0040)
	ld	(hl), #0xaa
	ld	hl, #(_backTiles + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0042)
	ld	(hl), #0x55
	ld	hl, #(_backTiles + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0044)
	ld	(hl), #0xaa
	ld	hl, #(_backTiles + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0046)
	ld	(hl), #0x55
	ld	hl, #(_backTiles + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0048)
	ld	(hl), #0xaa
	ld	hl, #(_backTiles + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x004a)
	ld	(hl), #0x55
	ld	hl, #(_backTiles + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x004c)
	ld	(hl), #0xaa
	ld	hl, #(_backTiles + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x004e)
	ld	(hl), #0x55
	ld	hl, #(_backTiles + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0059)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x005b)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x005f)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0063)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0064)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0065)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0067)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0068)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0069)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x006a)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x006b)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x006d)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x006e)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0073)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0075)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_backTiles + 0x007f)
	ld	(hl), #0x00
;../design/simpleMap.c:25: unsigned char simpleMap[] =
	ld	hl, #_simpleMap
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0001)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0002)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0003)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0004)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0005)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0006)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0007)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0008)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0009)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x000a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x000b)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x000c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x000d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x000e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x000f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0010)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0011)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0013)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0014)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0015)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0016)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0017)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0018)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0019)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x001a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x001b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x001c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x001d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x001e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x001f)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0020)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0021)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0022)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0023)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0024)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0025)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0026)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0027)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0028)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0029)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x002a)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x002b)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x002c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x002d)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x002e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x002f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0030)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0031)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0032)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0033)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0034)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0035)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0036)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0037)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0038)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0039)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x003a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x003b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x003c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x003d)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x003e)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x003f)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0040)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0041)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0042)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0043)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0044)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0045)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0046)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0047)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0048)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0049)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x004a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x004b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x004c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x004d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x004e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x004f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0050)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0051)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0052)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0053)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0054)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0055)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0056)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0057)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0058)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0059)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x005a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x005b)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x005c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x005d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x005e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x005f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0060)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0061)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0062)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0063)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0064)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0065)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0066)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0067)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0068)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0069)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x006a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x006b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x006c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x006d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x006e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x006f)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0070)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0071)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0072)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0073)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0074)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0075)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0076)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0077)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0078)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0079)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x007a)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x007b)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x007c)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x007d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x007e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x007f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0080)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0081)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0082)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0083)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0084)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0085)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0086)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0087)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0088)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0089)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x008a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x008b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x008c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x008d)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x008e)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x008f)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0090)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0091)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0092)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0093)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0094)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0095)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0096)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0097)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0098)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0099)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x009a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x009b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x009c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x009d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x009e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x009f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00a0)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x00a1)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00a2)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00a3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00a4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00a5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00a6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00a7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00a8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00a9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00aa)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00ab)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00ac)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00ad)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00ae)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00af)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00b0)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00b1)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00b2)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00b3)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00b4)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x00b5)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00b6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00b7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00b8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00b9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00ba)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00bb)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00bc)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00bd)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00be)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00bf)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00c0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00c1)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00c2)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00c3)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00c4)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00c5)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00c6)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00c7)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00c8)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x00c9)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00ca)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00cb)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00cc)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00cd)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00ce)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00cf)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00d0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00d1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00d2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00d3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00d4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00d5)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00d6)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00d7)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00d8)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00d9)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00da)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00db)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00dc)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x00dd)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00de)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00df)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00e9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00ea)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00eb)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00ec)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00ed)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00ee)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00ef)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x00f0)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x00f1)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x00f2)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00f3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00f4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00f5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00f6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00f7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00f8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00f9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00fa)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00fb)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00fc)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00fd)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x00fe)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x00ff)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0100)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0101)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0102)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0103)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0104)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0105)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0106)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0107)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0108)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0109)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x010a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x010b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x010c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x010d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x010e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x010f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0110)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0111)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0112)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0113)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0114)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0115)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0116)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0117)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0118)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0119)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x011a)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x011b)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x011c)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x011d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x011e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x011f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0120)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0121)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0122)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0123)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0124)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0125)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0126)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0127)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0128)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0129)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x012a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x012b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x012c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x012d)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x012e)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x012f)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0130)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0131)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0132)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0133)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0134)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0135)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0136)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0137)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0138)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0139)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x013a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x013b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x013c)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x013d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x013e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x013f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0140)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0141)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0142)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0143)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0144)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0145)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0146)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0147)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0148)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0149)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x014a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x014b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x014c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x014d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x014e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x014f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0150)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0151)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0152)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0153)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0154)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0155)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0156)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0157)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0158)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0159)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x015a)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x015b)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x015c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x015d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x015e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x015f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0160)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0161)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0162)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0163)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0164)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0165)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0166)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0167)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0168)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0169)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x016a)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x016b)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x016c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x016d)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x016e)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x016f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0170)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0171)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0172)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0173)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0174)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0175)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0176)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0177)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0178)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0179)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x017a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x017b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x017c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x017d)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x017e)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x017f)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0180)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0181)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0182)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0183)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0184)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0185)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0186)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0187)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0188)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0189)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x018a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x018b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x018c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x018d)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x018e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x018f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0190)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0191)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0192)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0193)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0194)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0195)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0196)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0197)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0198)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0199)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x019a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x019b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x019c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x019d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x019e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x019f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01a0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01a1)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01a2)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01a3)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01a4)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01a5)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01a6)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01a7)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01a8)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01a9)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01aa)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ab)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ac)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ad)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ae)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01af)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01b0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01b1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01b2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01b3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01b4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01b5)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01b6)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01b7)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01b8)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01b9)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01ba)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01bb)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01bc)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01bd)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01be)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01bf)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01c9)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01ca)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01cb)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01cc)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01cd)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01ce)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01cf)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01d0)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01d1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01d9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01da)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01db)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01dc)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01dd)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01de)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01df)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01e0)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01e1)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01e2)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01e3)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01e4)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01e5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01e6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01e7)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01e8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01e9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ea)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01eb)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ec)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ed)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ee)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01ef)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01f0)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01f1)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01f2)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01f3)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x01f4)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01f5)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01f6)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x01f7)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x01f8)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01f9)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01fa)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01fb)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01fc)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01fd)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01fe)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x01ff)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0200)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0201)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0202)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0203)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0204)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0205)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0206)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0207)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0208)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0209)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x020a)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x020b)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x020c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x020d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x020e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x020f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0210)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0211)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0212)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0213)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0214)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0215)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0216)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0217)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0218)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0219)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x021a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x021b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x021c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x021d)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x021e)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x021f)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0220)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0221)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0222)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0223)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0224)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0225)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0226)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0227)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0228)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0229)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x022a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x022b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x022c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x022d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x022e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x022f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0230)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0231)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0232)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0233)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0234)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0235)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0236)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0237)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0238)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0239)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x023a)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x023b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x023c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x023d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x023e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x023f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0240)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0241)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0242)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0243)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0244)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0245)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0246)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0247)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0248)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0249)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x024a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x024b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x024c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x024d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x024e)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x024f)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0250)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0251)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0252)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0253)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0254)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0255)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0256)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0257)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0258)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0259)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x025a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x025b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x025c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x025d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x025e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x025f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0260)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0261)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0262)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0263)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0264)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0265)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0266)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0267)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0268)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0269)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x026a)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x026b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x026c)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x026d)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x026e)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x026f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0270)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0271)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0272)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0273)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0274)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0275)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0276)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0277)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0278)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0279)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x027a)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x027b)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x027c)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x027d)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x027e)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x027f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0280)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0281)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0282)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0283)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0284)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0285)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0286)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0287)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0288)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x0289)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x028a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x028b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x028c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x028d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x028e)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x028f)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0290)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0291)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0292)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0293)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x0294)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0295)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0296)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0297)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x0298)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x0299)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x029a)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x029b)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x029c)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x029d)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x029e)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x029f)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02a0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02a1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02a2)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02a3)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02a4)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02a5)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02a6)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02a7)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02a8)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02a9)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02aa)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02ab)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02ac)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02ad)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02ae)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02af)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02b0)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02b1)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02b2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02b3)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02b4)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02b5)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02b6)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02b7)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02b8)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02b9)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02ba)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02bb)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02bc)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02bd)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02be)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02bf)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02c0)
	ld	(hl), #0x02
	ld	hl, #(_simpleMap + 0x02c1)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02c2)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02c3)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02c4)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02c5)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02c6)
	ld	(hl), #0x04
	ld	hl, #(_simpleMap + 0x02c7)
	ld	(hl), #0x03
	ld	hl, #(_simpleMap + 0x02c8)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02c9)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02ca)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02cb)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02cc)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02cd)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02ce)
	ld	(hl), #0x01
	ld	hl, #(_simpleMap + 0x02cf)
	ld	(hl), #0x01
;../design/score.c:26: unsigned char score[] =
	ld	hl, #_score
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0001)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0002)
	ld	(hl), #0x80
	ld	hl, #(_score + 0x0003)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0004)
	ld	(hl), #0x9e
	ld	hl, #(_score + 0x0005)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0006)
	ld	(hl), #0x90
	ld	hl, #(_score + 0x0007)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0008)
	ld	(hl), #0x9e
	ld	hl, #(_score + 0x0009)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x000a)
	ld	(hl), #0x82
	ld	hl, #(_score + 0x000b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x000c)
	ld	(hl), #0x9e
	ld	hl, #(_score + 0x000d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x000e)
	ld	(hl), #0x80
	ld	hl, #(_score + 0x000f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0011)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0013)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0014)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x0015)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0016)
	ld	(hl), #0x40
	ld	hl, #(_score + 0x0017)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0018)
	ld	(hl), #0x40
	ld	hl, #(_score + 0x0019)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x001a)
	ld	(hl), #0x40
	ld	hl, #(_score + 0x001b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x001c)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x001d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x001f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0023)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0024)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x0025)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0026)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x0027)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0028)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x002a)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x002b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x002c)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x002d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x002f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0033)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0034)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x0035)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0036)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x0037)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0038)
	ld	(hl), #0x38
	ld	hl, #(_score + 0x0039)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x003a)
	ld	(hl), #0x28
	ld	hl, #(_score + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x003c)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x003d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0040)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0041)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0043)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0044)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x0045)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0046)
	ld	(hl), #0x21
	ld	hl, #(_score + 0x0047)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0048)
	ld	(hl), #0x38
	ld	hl, #(_score + 0x0049)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x004a)
	ld	(hl), #0x21
	ld	hl, #(_score + 0x004b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x004c)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x004d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x004f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0050)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0051)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0053)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0054)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x0055)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0056)
	ld	(hl), #0x44
	ld	hl, #(_score + 0x0057)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0058)
	ld	(hl), #0x44
	ld	hl, #(_score + 0x0059)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x005a)
	ld	(hl), #0x44
	ld	hl, #(_score + 0x005b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x005c)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x005d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x005f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0060)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0061)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0062)
	ld	(hl), #0x01
	ld	hl, #(_score + 0x0063)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0064)
	ld	(hl), #0x7d
	ld	hl, #(_score + 0x0065)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0066)
	ld	(hl), #0x45
	ld	hl, #(_score + 0x0067)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0068)
	ld	(hl), #0x45
	ld	hl, #(_score + 0x0069)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x006a)
	ld	(hl), #0x45
	ld	hl, #(_score + 0x006b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x006c)
	ld	(hl), #0x7d
	ld	hl, #(_score + 0x006d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x006e)
	ld	(hl), #0x01
	ld	hl, #(_score + 0x006f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0070)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0071)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0073)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0074)
	ld	(hl), #0x10
	ld	hl, #(_score + 0x0075)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0076)
	ld	(hl), #0x30
	ld	hl, #(_score + 0x0077)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0078)
	ld	(hl), #0x10
	ld	hl, #(_score + 0x0079)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x007a)
	ld	(hl), #0x10
	ld	hl, #(_score + 0x007b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x007c)
	ld	(hl), #0x10
	ld	hl, #(_score + 0x007d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x007f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0080)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0081)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0083)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0084)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x0085)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0086)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x0087)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0088)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x0089)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x008a)
	ld	(hl), #0x20
	ld	hl, #(_score + 0x008b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x008c)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x008d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x008f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0090)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0091)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0092)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x0093)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0094)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x0095)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0096)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x0097)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x0098)
	ld	(hl), #0x1c
	ld	hl, #(_score + 0x0099)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x009a)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x009b)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x009c)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x009d)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x009f)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00a0)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00a1)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00a2)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00a3)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00a4)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x00a5)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00a6)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x00a7)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00a8)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x00a9)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00aa)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x00ab)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ac)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x00ad)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ae)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00af)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00b0)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00b1)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00b2)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00b3)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00b4)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x00b5)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00b6)
	ld	(hl), #0x20
	ld	hl, #(_score + 0x00b7)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00b8)
	ld	(hl), #0x38
	ld	hl, #(_score + 0x00b9)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ba)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x00bb)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00bc)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x00bd)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00bf)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00c0)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00c1)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00c3)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00c4)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x00c5)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00c6)
	ld	(hl), #0x20
	ld	hl, #(_score + 0x00c7)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00c8)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x00c9)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ca)
	ld	(hl), #0x24
	ld	hl, #(_score + 0x00cb)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00cc)
	ld	(hl), #0x3c
	ld	hl, #(_score + 0x00cd)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00cf)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00d0)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00d1)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00d2)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00d3)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00d4)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00d5)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00d6)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x00d7)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00d8)
	ld	(hl), #0x08
	ld	hl, #(_score + 0x00d9)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00da)
	ld	(hl), #0x10
	ld	hl, #(_score + 0x00db)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00dc)
	ld	(hl), #0x20
	ld	hl, #(_score + 0x00dd)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00df)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00e0)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00e1)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00e2)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00e3)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00e4)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00e5)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00e6)
	ld	(hl), #0x44
	ld	hl, #(_score + 0x00e7)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00e8)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00e9)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ea)
	ld	(hl), #0x44
	ld	hl, #(_score + 0x00eb)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ec)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00ed)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00ee)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00ef)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00f0)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00f1)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00f2)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00f3)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00f4)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00f5)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00f6)
	ld	(hl), #0x44
	ld	hl, #(_score + 0x00f7)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00f8)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00f9)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00fa)
	ld	(hl), #0x04
	ld	hl, #(_score + 0x00fb)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00fc)
	ld	(hl), #0x7c
	ld	hl, #(_score + 0x00fd)
	ld	(hl), #0xff
	ld	hl, #(_score + 0x00fe)
	ld	(hl), #0x00
	ld	hl, #(_score + 0x00ff)
	ld	(hl), #0xff
;personagem.c:6: UINT8 spriteId=0;
	ld	hl, #_spriteId
	ld	(hl), #0x00
;personagem.c:7: UBYTE spritesizes = 8;
	ld	hl, #_spritesizes
	ld	(hl), #0x08
;movimentacao.c:5: UBYTE spritesize = 8;
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
;personagem.c:45: void setupEnemy(struct personagem *enemy,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupEnemy
; ---------------------------------
_setupEnemy::
	add	sp, #-2
;personagem.c:46: enemy->x = 0;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:47: enemy->y = 0;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:48: enemy->width = 16;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:49: enemy->height = 16;
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:50: enemy->ativo = 0;
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:52: for(UINT8 i=start; i<end ; i++){
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
;personagem.c:53: set_sprite_tile(spriteId, i);
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
;personagem.c:54: enemy->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:55: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:56: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:52: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:58: }
	add	sp, #2
	ret
;personagem.c:60: void setupHero(struct personagem *hero,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupHero
; ---------------------------------
_setupHero::
	add	sp, #-2
;personagem.c:61: hero->x = 80;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x50
;personagem.c:62: hero->y = 128;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x80
;personagem.c:63: hero->width = 16;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:64: hero->height = 16;
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:65: hero->ativo = 0;
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:67: for(UINT8 i=start; i<end ; i++){
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
;personagem.c:68: set_sprite_tile(spriteId, i);
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
;personagem.c:69: hero->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:70: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:71: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:67: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:73: }
	add	sp, #2
	ret
;personagem.c:75: void setupSubBoss(struct subBoss *miniBoss,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupSubBoss
; ---------------------------------
_setupSubBoss::
	add	sp, #-2
;personagem.c:76: miniBoss->x = 0;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:77: miniBoss->y = 0;
	ld	hl, #0x000a
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:78: miniBoss->width = 24;
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0x18
;personagem.c:79: miniBoss->height = 24;
	ld	hl, #0x000e
	add	hl, bc
	ld	(hl), #0x18
;personagem.c:80: miniBoss->ativo = 0;
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:82: for(UINT8 i=start; i<end ; i++){
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
;personagem.c:83: set_sprite_tile(spriteId, i);
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
;personagem.c:84: miniBoss->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:85: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:86: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:82: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:88: }
	add	sp, #2
	ret
;personagem.c:90: void setupBala(struct bala* bullet,UINT8 spriteBala){
;	---------------------------------
; Function setupBala
; ---------------------------------
_setupBala::
;personagem.c:91: bullet->spriteIds=spriteId;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (#_spriteId)
	ld	(bc), a
;personagem.c:92: set_sprite_tile(spriteId, spriteBala);
	ldhl	sp,	#4
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	xor	a, a
	ld	l, b
	ld	h, a
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:93: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:94: bullet->width=3;
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x03
;personagem.c:95: bullet->height=3;
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x03
;personagem.c:96: bullet->ativo=0;
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
;personagem.c:97: }
	ret
;personagem.c:100: void setupScore(struct scorePoint *score, UINT8 start,UINT8 x, UINT8 y){   
;	---------------------------------
; Function setupScore
; ---------------------------------
_setupScore::
	add	sp, #-19
;personagem.c:103: score->valor=0;
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;c
	pop	de
	push	de
	ld	hl, #0x0009
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
;personagem.c:104: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:105: score->spriteIds[i] = spriteId;
	pop	de
	push	de
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:106: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:108: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:109: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:110: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:112: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:113: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:114: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:116: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:117: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0003
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:118: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:120: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:121: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:122: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:124: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:125: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_spriteId
	ld	a, (hl)
	ld	(de), a
;personagem.c:126: spriteId++; i++;
	inc	(hl)
;personagem.c:129: for (UINT8 j = 0; j < 11; j++){
;c
	pop	de
	push	de
	ld	hl, #0x000b
	add	hl, de
	ld	e, l
	ld	d, h
	ld	b, #0x00
00121$:
	ld	a, b
	sub	a, #0x0b
	jr	NC, 00101$
;personagem.c:130: score->spriteTiles[j]=aux;
	ld	l, b
	ld	h, #0x00
	add	hl, de
	ld	(hl), c
;personagem.c:131: aux++;
	inc	c
;personagem.c:129: for (UINT8 j = 0; j < 11; j++){
	inc	b
	jr	00121$
00101$:
;personagem.c:134: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:135: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_spriteId
	ld	a, (hl)
	ld	(de), a
;personagem.c:136: spriteId++; i++;
	inc	(hl)
;personagem.c:138: set_sprite_tile(spriteId, start);
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:139: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0007
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#16
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#15
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_spriteId
	ld	a, (hl)
	ld	(de), a
;personagem.c:140: spriteId++; i++;start++;
	inc	(hl)
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
;personagem.c:142: set_sprite_tile(spriteId, start);
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:143: score->spriteIds[i] = spriteId;
;c
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#18
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#17
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_spriteId
	ld	a, (hl)
	ld	(de), a
;personagem.c:144: spriteId++; i++;
	inc	(hl)
;personagem.c:146: move_sprite(score->spriteIds[0], x, y);
	ldhl	sp,	#25
	ld	a, (hl)
	ldhl	sp,	#18
	ld	(hl), a
	ldhl	sp,	#24
	ld	c, (hl)
	pop	de
	push	de
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:147: move_sprite(score->spriteIds[1], x + spritesizes, y);
	ld	a, c
	ld	hl, #_spritesizes
	add	a, (hl)
	ldhl	sp,#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	b, a
	pop	af
	ld	(hl), a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, b
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(de), a
;personagem.c:148: move_sprite(score->spriteIds[2], x + 2*spritesizes, y);
	ld	a, (#_spritesizes)
	add	a, a
	ld	b, a
	ldhl	sp,	#3
	ld	(hl), c
	ld	a, b
	add	a, (hl)
	ld	b, a
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;personagem.c:149: move_sprite(score->spriteIds[3], x + 3*spritesizes, y);
	ld	a, (#_spritesizes)
	ld	c, a
	add	a, a
	add	a, c
	ldhl	sp,	#3
	add	a, (hl)
	ld	b, a
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;personagem.c:150: move_sprite(score->spriteIds[4], x + 4*spritesizes, y);
	ld	a, (#_spritesizes)
	add	a, a
	add	a, a
	ldhl	sp,	#3
	add	a, (hl)
	ld	c, a
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:151: move_sprite(score->spriteIds[5], x + 5*spritesizes, y);
	ld	a, (#_spritesizes)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	ldhl	sp,	#3
	add	a, (hl)
	ld	c, a
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:152: move_sprite(score->spriteIds[6], x + 6*spritesizes, y);
	ld	a, (#_spritesizes)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ldhl	sp,	#3
	add	a, (hl)
	ld	c, a
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:153: move_sprite(score->spriteIds[7], x + 7*spritesizes, y);
	ld	a, (#_spritesizes)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, c
	ldhl	sp,	#3
	add	a, (hl)
	ld	c, a
	ldhl	sp,#14
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:154: move_sprite(score->spriteIds[8], x + 8*spritesizes, y);
	ld	a, (#_spritesizes)
	add	a, a
	add	a, a
	add	a, a
	ldhl	sp,	#3
	add	a, (hl)
	ld	c, a
	ldhl	sp,#16
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:154: move_sprite(score->spriteIds[8], x + 8*spritesizes, y);
;personagem.c:155: }
	add	sp, #19
	ret
;personagem.c:158: void sumScore(struct scorePoint *score,UINT16 value){
;	---------------------------------
; Function sumScore
; ---------------------------------
_sumScore::
	add	sp, #-13
;personagem.c:160: score->valor=score->valor+value;
	ldhl	sp,	#15
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
	ld	hl, #0x0009
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
	inc	de
	ld	a, (de)
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#17
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;personagem.c:162: UINT16 first= (score->valor) / 100;
	ld	hl, #0x0064
	push	hl
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	__divuint
	add	sp, #4
	push	hl
	ldhl	sp,	#9
	ld	(hl), e
	ldhl	sp,	#10
	ld	(hl), d
	pop	hl
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, (hl)
	inc	hl
	inc	hl
	ld	(hl+), a
;personagem.c:163: UINT16 second= ((score->valor)-first*100)/10;
	ld	a, e
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	(hl), e
	ld	hl, #0x000a
	push	hl
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	__divuint
	add	sp, #4
	push	hl
	ldhl	sp,	#10
	ld	(hl), e
	ldhl	sp,	#11
	ld	(hl), d
	pop	hl
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
;personagem.c:164: UINT16 third= (score->valor) - first*100 -second*10;
	ld	a, e
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
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
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, a
	ld	c, e
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;personagem.c:167: set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
;personagem.c:166: if(first==9){
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00126$
;personagem.c:167: set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0015
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00351$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00351$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:167: set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
	jp	00127$
00126$:
;personagem.c:168: }else if(first==8){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00123$
;personagem.c:169: set_sprite_tile(score->spriteIds[5],score->spriteTiles[9]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0014
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:169: set_sprite_tile(score->spriteIds[5],score->spriteTiles[9]);
	jp	00127$
00123$:
;personagem.c:170: }else if(first==7){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00120$
;personagem.c:171: set_sprite_tile(score->spriteIds[5],score->spriteTiles[8]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0013
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00356$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00356$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:171: set_sprite_tile(score->spriteIds[5],score->spriteTiles[8]);
	jp	00127$
00120$:
;personagem.c:172: }else if(first==6){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00117$
;personagem.c:173: set_sprite_tile(score->spriteIds[5],score->spriteTiles[7]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0012
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00359$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00359$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:173: set_sprite_tile(score->spriteIds[5],score->spriteTiles[7]);
	jp	00127$
00117$:
;personagem.c:174: }else if(first==5){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00114$
;personagem.c:175: set_sprite_tile(score->spriteIds[5],score->spriteTiles[6]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00362$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00362$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:175: set_sprite_tile(score->spriteIds[5],score->spriteTiles[6]);
	jp	00127$
00114$:
;personagem.c:176: }else if(first==4){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00111$
;personagem.c:177: set_sprite_tile(score->spriteIds[5],score->spriteTiles[5]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00365$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00365$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:177: set_sprite_tile(score->spriteIds[5],score->spriteTiles[5]);
	jp	00127$
00111$:
;personagem.c:178: }else if(first==3){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00108$
;personagem.c:179: set_sprite_tile(score->spriteIds[5],score->spriteTiles[4]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00368$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00368$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:179: set_sprite_tile(score->spriteIds[5],score->spriteTiles[4]);
	jp	00127$
00108$:
;personagem.c:180: }else if(first==2){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00105$
;personagem.c:181: set_sprite_tile(score->spriteIds[5],score->spriteTiles[3]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00371$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00371$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	inc	sp
	inc	sp
;c
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:181: set_sprite_tile(score->spriteIds[5],score->spriteTiles[3]);
	jp	00127$
00105$:
;personagem.c:182: }else if(first==1){
	ldhl	sp,	#10
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00102$
;personagem.c:183: set_sprite_tile(score->spriteIds[5],score->spriteTiles[2]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#12
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00374$:
	ldhl	sp,	#11
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00374$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;personagem.c:183: set_sprite_tile(score->spriteIds[5],score->spriteTiles[2]);
	jr	00127$
00102$:
;personagem.c:185: set_sprite_tile(score->spriteIds[5],score->spriteTiles[0]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#12
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00375$:
	ldhl	sp,	#11
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00375$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;personagem.c:185: set_sprite_tile(score->spriteIds[5],score->spriteTiles[0]);
00127$:
;personagem.c:189: set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
	ld	(hl), a
;personagem.c:188: if(second==9){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00153$
;personagem.c:189: set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0015
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00378$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00378$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:189: set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
	jp	00154$
00153$:
;personagem.c:190: }else if(second==8){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00150$
;personagem.c:191: set_sprite_tile(score->spriteIds[6],score->spriteTiles[9]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0014
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00381$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00381$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:191: set_sprite_tile(score->spriteIds[6],score->spriteTiles[9]);
	jp	00154$
00150$:
;personagem.c:192: }else if(second==7){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00147$
;personagem.c:193: set_sprite_tile(score->spriteIds[6],score->spriteTiles[8]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0013
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00384$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00384$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:193: set_sprite_tile(score->spriteIds[6],score->spriteTiles[8]);
	jp	00154$
00147$:
;personagem.c:194: }else if(second==6){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00144$
;personagem.c:195: set_sprite_tile(score->spriteIds[6],score->spriteTiles[7]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0012
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00387$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00387$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:195: set_sprite_tile(score->spriteIds[6],score->spriteTiles[7]);
	jp	00154$
00144$:
;personagem.c:196: }else if(second==5){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00141$
;personagem.c:197: set_sprite_tile(score->spriteIds[6],score->spriteTiles[6]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00390$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00390$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:197: set_sprite_tile(score->spriteIds[6],score->spriteTiles[6]);
	jp	00154$
00141$:
;personagem.c:198: }else if(second==4){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00138$
;personagem.c:199: set_sprite_tile(score->spriteIds[6],score->spriteTiles[5]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00393$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00393$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:199: set_sprite_tile(score->spriteIds[6],score->spriteTiles[5]);
	jp	00154$
00138$:
;personagem.c:200: }else if(second==3){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00135$
;personagem.c:201: set_sprite_tile(score->spriteIds[6],score->spriteTiles[4]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00396$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00396$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:201: set_sprite_tile(score->spriteIds[6],score->spriteTiles[4]);
	jp	00154$
00135$:
;personagem.c:202: }else if(second==2){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00132$
;personagem.c:203: set_sprite_tile(score->spriteIds[6],score->spriteTiles[3]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00399$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00399$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:203: set_sprite_tile(score->spriteIds[6],score->spriteTiles[3]);
	jp	00154$
00132$:
;personagem.c:204: }else if(second==1){
	ldhl	sp,	#4
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00129$
;personagem.c:205: set_sprite_tile(score->spriteIds[6],score->spriteTiles[2]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00402$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00402$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:205: set_sprite_tile(score->spriteIds[6],score->spriteTiles[2]);
	jr	00154$
00129$:
;personagem.c:207: set_sprite_tile(score->spriteIds[6],score->spriteTiles[0]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#12
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00403$:
	ldhl	sp,	#11
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00403$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;personagem.c:207: set_sprite_tile(score->spriteIds[6],score->spriteTiles[0]);
00154$:
;personagem.c:211: set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
	ld	(hl), a
;personagem.c:210: if(third==9){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00180$
;personagem.c:211: set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0015
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00406$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00406$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:211: set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
	jp	00212$
00180$:
;personagem.c:212: }else if(third==8){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00177$
;personagem.c:213: set_sprite_tile(score->spriteIds[7],score->spriteTiles[9]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0014
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00409$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00409$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:213: set_sprite_tile(score->spriteIds[7],score->spriteTiles[9]);
	jp	00212$
00177$:
;personagem.c:214: }else if(third==7){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00174$
;personagem.c:215: set_sprite_tile(score->spriteIds[7],score->spriteTiles[8]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0013
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00412$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00412$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:215: set_sprite_tile(score->spriteIds[7],score->spriteTiles[8]);
	jp	00212$
00174$:
;personagem.c:216: }else if(third==6){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00171$
;personagem.c:217: set_sprite_tile(score->spriteIds[7],score->spriteTiles[7]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0012
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00415$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00415$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:217: set_sprite_tile(score->spriteIds[7],score->spriteTiles[7]);
	jp	00212$
00171$:
;personagem.c:218: }else if(third==5){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00168$
;personagem.c:219: set_sprite_tile(score->spriteIds[7],score->spriteTiles[6]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00418$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00418$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:219: set_sprite_tile(score->spriteIds[7],score->spriteTiles[6]);
	jp	00212$
00168$:
;personagem.c:220: }else if(third==4){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00165$
;personagem.c:221: set_sprite_tile(score->spriteIds[7],score->spriteTiles[5]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00421$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00421$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:221: set_sprite_tile(score->spriteIds[7],score->spriteTiles[5]);
	jp	00212$
00165$:
;personagem.c:222: }else if(third==3){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00162$
;personagem.c:223: set_sprite_tile(score->spriteIds[7],score->spriteTiles[4]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00424$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00424$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:223: set_sprite_tile(score->spriteIds[7],score->spriteTiles[4]);
	jp	00212$
00162$:
;personagem.c:224: }else if(third==2){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00159$
;personagem.c:225: set_sprite_tile(score->spriteIds[7],score->spriteTiles[3]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00427$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00427$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:225: set_sprite_tile(score->spriteIds[7],score->spriteTiles[3]);
	jp	00212$
00159$:
;personagem.c:226: }else if(third==1){
	ldhl	sp,	#6
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00156$
;personagem.c:227: set_sprite_tile(score->spriteIds[7],score->spriteTiles[2]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00430$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00430$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:227: set_sprite_tile(score->spriteIds[7],score->spriteTiles[2]);
	jr	00212$
00156$:
;personagem.c:229: set_sprite_tile(score->spriteIds[7],score->spriteTiles[0]);
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00431$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00431$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
	ld	(de), a
;personagem.c:229: set_sprite_tile(score->spriteIds[7],score->spriteTiles[0]);
00212$:
;personagem.c:235: }
	add	sp, #13
	ret
;movimentacao.c:7: void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter
; ---------------------------------
_setPositionGameCharacter::
	add	sp, #-3
;movimentacao.c:8: move_sprite(character->spriteIds[0], x, y);
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
;movimentacao.c:9: move_sprite(character->spriteIds[1], x + spritesize, y);
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
;movimentacao.c:10: move_sprite(character->spriteIds[2], x, y + spritesize);
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
;movimentacao.c:11: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
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
;movimentacao.c:11: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
;movimentacao.c:12: }
	add	sp, #3
	ret
;movimentacao.c:14: void setPositionGameCharacter2(struct subBoss* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter2
; ---------------------------------
_setPositionGameCharacter2::
	add	sp, #-5
;movimentacao.c:15: move_sprite(character->spriteIds[0], x, y);
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
;movimentacao.c:16: move_sprite(character->spriteIds[1], x + spritesize, y);
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
;movimentacao.c:17: move_sprite(character->spriteIds[2], x + 2*spritesize, y);
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
;movimentacao.c:19: move_sprite(character->spriteIds[3], x, y + spritesize);
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
;movimentacao.c:20: move_sprite(character->spriteIds[4], x + spritesize, y + spritesize);
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
;movimentacao.c:21: move_sprite(character->spriteIds[5], x + 2*spritesize, y + spritesize);
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
;movimentacao.c:23: move_sprite(character->spriteIds[6], x, y + 2*spritesize);
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
;movimentacao.c:24: move_sprite(character->spriteIds[7], x + spritesize, y + 2*spritesize);
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
;movimentacao.c:25: move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
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
;movimentacao.c:25: move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
;movimentacao.c:26: }
	add	sp, #5
	ret
;movimentacao.c:28: void moveBala(struct bala* bullet){
;	---------------------------------
; Function moveBala
; ---------------------------------
_moveBala::
	add	sp, #-9
;movimentacao.c:29: if(bullet->ativo==1){
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;c
	pop	de
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	jp	NZ,00108$
;movimentacao.c:30: if(bullet->y+bullet->height-5>=-10){
;c
	pop	de
	push	de
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
	ld	(hl), a
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
;c
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	bc, #0xfffb
	add	hl,bc
	ld	c, l
	ld	b, h
;movimentacao.c:33: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
;c
	pop	de
	push	de
	ld	hl, #0x0003
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
;movimentacao.c:30: if(bullet->y+bullet->height-5>=-10){
	ld	a, c
	sub	a, #0xf6
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00102$
;movimentacao.c:31: bullet->y=bullet->y-5;
	dec	hl
	dec	hl
	ld	a, (hl)
	add	a, #0xfb
	ld	b, a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), b
;movimentacao.c:33: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	e, (hl)
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
;movimentacao.c:33: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	jr	00108$
00102$:
;movimentacao.c:35: bullet->ativo=0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x00
;movimentacao.c:36: move_sprite(bullet->spriteIds,150,0);
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;c:/gbdk/include/gb/gb.h:1072: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, de
;c:/gbdk/include/gb/gb.h:1073: itm->y=y, itm->x=x;
	ld	a, #0x00
	ld	(hl+), a
	ld	(hl), #0x96
;movimentacao.c:36: move_sprite(bullet->spriteIds,150,0);
00108$:
;movimentacao.c:39: }
	add	sp, #9
	ret
;game.c:17: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-81
;game.c:20: set_bkg_data(0, 10, backTiles);
	ld	hl, #_backTiles
	push	hl
	ld	a, #0x0a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;game.c:21: set_bkg_tiles(0, 0, 20, 36, simpleMap);
	ld	hl, #_simpleMap
	push	hl
	ld	de, #0x2414
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;game.c:23: set_sprite_data(0, 4, ghost);
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
;game.c:24: set_sprite_data(4, 4, protagonista);
	ld	hl, #_protagonista
	push	hl
	ld	de, #0x0404
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:25: set_sprite_data(8, 9, MiniBossOgro);
	ld	hl, #_MiniBossOgro
	push	hl
	ld	de, #0x0908
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:26: set_sprite_data(17, 1, projetil);
	ld	hl, #_projetil
	push	hl
	ld	de, #0x0111
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:27: set_sprite_data(18,16, score);
	ld	hl, #_score
	push	hl
	ld	de, #0x1012
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:35: setupHero(&protagonista,4,8);
	ldhl	sp,	#0
	ld	a, l
	ld	d, h
	ldhl	sp,	#62
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
;game.c:36: setPositionGameCharacter(&protagonista,80,128);
	ldhl	sp,#62
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x8050
	push	de
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:42: setupScore(&pontuacao,18,96,152);
	ldhl	sp,	#10
	ld	a, l
	ld	d, h
	ldhl	sp,	#64
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x9860
	push	de
	ld	a, #0x12
	push	af
	inc	sp
	push	bc
	call	_setupScore
	add	sp, #5
;game.c:50: setupBala(&projetil1,17);
	ldhl	sp,	#32
	ld	a, l
	ld	d, h
	ldhl	sp,	#66
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x11
	push	af
	inc	sp
	push	bc
	call	_setupBala
	add	sp, #3
;game.c:51: setupBala(&projetil2,17);
	ldhl	sp,	#38
	ld	a, l
	ld	d, h
	ldhl	sp,	#68
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x11
	push	af
	inc	sp
	push	bc
	call	_setupBala
	add	sp, #3
;game.c:52: setupBala(&projetil3,17);
	ldhl	sp,	#44
	ld	a, l
	ld	d, h
	ldhl	sp,	#70
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x11
	push	af
	inc	sp
	push	bc
	call	_setupBala
	add	sp, #3
;game.c:53: setupBala(&projetil4,17);
	ldhl	sp,	#50
	ld	a, l
	ld	d, h
	ldhl	sp,	#72
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x11
	push	af
	inc	sp
	push	bc
	call	_setupBala
	add	sp, #3
;game.c:54: setupBala(&projetil5,17);
	ldhl	sp,	#56
	ld	a, l
	ld	d, h
	ldhl	sp,	#74
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x11
	push	af
	inc	sp
	push	bc
	call	_setupBala
	add	sp, #3
;game.c:58: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;game.c:59: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;game.c:61: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;game.c:65: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;game.c:67: while(1){
00130$:
;c:/gbdk/include/gb/gb.h:770: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	inc	a
	ldh	(_SCY_REG+0),a
;game.c:69: moveBala(&projetil1);
	ldhl	sp,#66
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:70: moveBala(&projetil2);
	ldhl	sp,#68
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:71: moveBala(&projetil3);
	ldhl	sp,#70
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:72: moveBala(&projetil4);
	ldhl	sp,#72
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:73: moveBala(&projetil5);
	ldhl	sp,#74
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:74: if(joypad() & J_LEFT){
	call	_joypad
	ld	c, e
;game.c:75: (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
;c
	ldhl	sp,#62
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#78
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#77
	ld	(hl), a
;game.c:78: setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
;c
	ldhl	sp,#62
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#80
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#79
	ld	(hl), a
;game.c:74: if(joypad() & J_LEFT){
	bit	1, c
	jr	Z, 00102$
;game.c:75: (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
	ldhl	sp,#76
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
	jr	Z, 00135$
	ldhl	sp,	#76
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00136$
00135$:
	dec	c
	dec	c
	ldhl	sp,	#76
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00136$:
;game.c:78: setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
	ldhl	sp,#78
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
	ldhl	sp,#62
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00102$:
;game.c:81: if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00104$
;game.c:82: (protagonista.x+8) >= 160 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x+2);
	ldhl	sp,#76
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#80
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0008
	add	hl, bc
	ld	a, l
	sub	a, #0xa0
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00137$
	ldhl	sp,#76
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#80
	ld	a, (hl)
	ld	(de), a
	jr	00138$
00137$:
	ldhl	sp,	#80
	ld	c, (hl)
	inc	c
	inc	c
	ldhl	sp,	#76
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00138$:
;game.c:84: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ldhl	sp,#78
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
	ldhl	sp,#62
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00104$:
;game.c:87: if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00106$
;game.c:89: (protagonista.y-16) <= 20 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y-2);
	ldhl	sp,#78
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	e, c
	ld	d, #0x00
	ld	a, e
	add	a, #0xf0
	ld	b, a
	ld	a, d
	adc	a, #0xff
	ld	l, a
	ld	e, l
	ld	d, #0x00
	ld	a, #0x14
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	bit	7, e
	jr	Z, 00221$
	bit	7, d
	jr	NZ, 00222$
	cp	a, a
	jr	00222$
00221$:
	bit	7, d
	jr	Z, 00222$
	scf
00222$:
	jr	C, 00139$
	ldhl	sp,	#78
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00140$
00139$:
	dec	c
	dec	c
	ldhl	sp,	#78
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00140$:
;game.c:90: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ldhl	sp,#78
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
	ldhl	sp,#62
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00106$:
;game.c:93: if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00108$
;game.c:95: (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
	ldhl	sp,#78
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	sub	a, #0x80
	jr	C, 00141$
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00142$
00141$:
	inc	c
	inc	c
	ldhl	sp,	#78
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00142$:
;game.c:96: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ldhl	sp,#78
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
	ldhl	sp,#62
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00108$:
;game.c:99: if(joypad() & J_A){
	call	_joypad
	bit	4, e
	jp	Z,00124$
;game.c:101: sumScore(&pontuacao,10);
	ldhl	sp,#64
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000a
	push	hl
	push	bc
	call	_sumScore
	add	sp, #4
;game.c:103: if( projetil1.ativo==0){
	ldhl	sp,#66
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00121$
;game.c:104: projetil1.x=protagonista.x+4;
	ldhl	sp,#76
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ldhl	sp,	#66
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:105: projetil1.y=protagonista.y-2;
;c
	ldhl	sp,#66
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#78
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#77
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ldhl	sp,	#76
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:106: projetil1.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jp	00124$
00121$:
;game.c:107: }else if(projetil2.ativo==0){
	ldhl	sp,#68
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00118$
;game.c:108: projetil2.x=protagonista.x+4;
	ldhl	sp,#76
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ldhl	sp,	#68
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:109: projetil2.y=protagonista.y-2;
;c
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#78
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#77
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ldhl	sp,	#76
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:110: projetil2.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jp	00124$
00118$:
;game.c:111: }else if(projetil3.ativo==0){
	ldhl	sp,#70
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00115$
;game.c:112: projetil3.x=protagonista.x+4;
	ldhl	sp,#76
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ldhl	sp,	#70
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:113: projetil3.y=protagonista.y-2;
;c
	ldhl	sp,#70
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#78
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#77
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ldhl	sp,	#76
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:114: projetil3.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jp	00124$
00115$:
;game.c:115: }else if(projetil4.ativo==0){
	ldhl	sp,#72
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00112$
;game.c:116: projetil4.x=protagonista.x+4;
	ldhl	sp,#76
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ldhl	sp,	#72
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:117: projetil4.y=protagonista.y-2;
;c
	ldhl	sp,#72
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#78
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#77
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ldhl	sp,	#76
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:118: projetil4.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jr	00124$
00112$:
;game.c:119: }else if(projetil5.ativo==0){
	ldhl	sp,#74
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00124$
;game.c:120: projetil5.x=protagonista.x+4;
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ldhl	sp,	#74
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:121: projetil5.y=protagonista.y-2;
;c
	ldhl	sp,#74
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#78
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#77
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ldhl	sp,	#76
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:122: projetil5.ativo=1;
	ld	a, #0x01
	ld	(bc), a
00124$:
;game.c:126: if(joypad() & J_SELECT){
	call	_joypad
;game.c:133: if(joypad() & J_START){
	call	_joypad
;game.c:143: performantdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00130$
;game.c:148: }
	add	sp, #81
	ret
;game.c:150: void performantdelay(UINT8 numloops){ // nova funcao delay
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;game.c:152: for(i = 0; i < numloops; i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;game.c:153: wait_vbl_done();
	call	_wait_vbl_done
;game.c:152: for(i = 0; i < numloops; i++){
	inc	c
;game.c:155: }
	jr	00103$
	.area _CODE
	.area _CABS (ABS)
