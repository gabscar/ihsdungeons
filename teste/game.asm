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
	.globl _setupBala
	.globl _checarColisaoBala
	.globl _checarColisaoPersonagem
	.globl _moveInimigo1
	.globl _setupInimigo
	.globl _setupAstronauta
	.globl _setPositionGameCharacter
	.globl _performantdelay
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpad
	.globl _joypad
	.globl _spriteBala
	.globl _idInimigo
	.globl _idBala
	.globl _spritesize
	.globl _astronauta
	.globl _gameSprites
	.globl _simpleMap
	.globl _backTiles
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_backTiles::
	.ds 128
_simpleMap::
	.ds 720
_gameSprites::
	.ds 144
_astronauta::
	.ds 10
_spritesize::
	.ds 1
_idBala::
	.ds 1
_idInimigo::
	.ds 1
_spriteBala::
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
;gameSprites.c:26: unsigned char gameSprites[] =
	ld	hl, #_gameSprites
	ld	(hl), #0x0f
	ld	hl, #(_gameSprites + 0x0001)
	ld	(hl), #0x0f
	ld	hl, #(_gameSprites + 0x0002)
	ld	(hl), #0x1f
	ld	hl, #(_gameSprites + 0x0003)
	ld	(hl), #0x10
	ld	hl, #(_gameSprites + 0x0004)
	ld	(hl), #0x3f
	ld	hl, #(_gameSprites + 0x0005)
	ld	(hl), #0x20
	ld	hl, #(_gameSprites + 0x0006)
	ld	(hl), #0x3f
	ld	hl, #(_gameSprites + 0x0007)
	ld	(hl), #0x20
	ld	hl, #(_gameSprites + 0x0008)
	ld	(hl), #0x3f
	ld	hl, #(_gameSprites + 0x0009)
	ld	(hl), #0x20
	ld	hl, #(_gameSprites + 0x000a)
	ld	(hl), #0x7f
	ld	hl, #(_gameSprites + 0x000b)
	ld	(hl), #0x70
	ld	hl, #(_gameSprites + 0x000c)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x000d)
	ld	(hl), #0x90
	ld	hl, #(_gameSprites + 0x000e)
	ld	(hl), #0xdf
	ld	hl, #(_gameSprites + 0x000f)
	ld	(hl), #0xb0
	ld	hl, #(_gameSprites + 0x0010)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x0011)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x0012)
	ld	(hl), #0xfc
	ld	hl, #(_gameSprites + 0x0013)
	ld	(hl), #0x0c
	ld	hl, #(_gameSprites + 0x0014)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x0015)
	ld	(hl), #0x06
	ld	hl, #(_gameSprites + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0017)
	ld	(hl), #0x1f
	ld	hl, #(_gameSprites + 0x0018)
	ld	(hl), #0xf1
	ld	hl, #(_gameSprites + 0x0019)
	ld	(hl), #0x19
	ld	hl, #(_gameSprites + 0x001a)
	ld	(hl), #0xf1
	ld	hl, #(_gameSprites + 0x001b)
	ld	(hl), #0x1f
	ld	hl, #(_gameSprites + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x001d)
	ld	(hl), #0x1f
	ld	hl, #(_gameSprites + 0x001e)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x001f)
	ld	(hl), #0x02
	ld	hl, #(_gameSprites + 0x0020)
	ld	(hl), #0xdf
	ld	hl, #(_gameSprites + 0x0021)
	ld	(hl), #0xb0
	ld	hl, #(_gameSprites + 0x0022)
	ld	(hl), #0x99
	ld	hl, #(_gameSprites + 0x0023)
	ld	(hl), #0xf6
	ld	hl, #(_gameSprites + 0x0024)
	ld	(hl), #0x98
	ld	hl, #(_gameSprites + 0x0025)
	ld	(hl), #0xf7
	ld	hl, #(_gameSprites + 0x0026)
	ld	(hl), #0x98
	ld	hl, #(_gameSprites + 0x0027)
	ld	(hl), #0xf7
	ld	hl, #(_gameSprites + 0x0028)
	ld	(hl), #0x70
	ld	hl, #(_gameSprites + 0x0029)
	ld	(hl), #0x7f
	ld	hl, #(_gameSprites + 0x002a)
	ld	(hl), #0x11
	ld	hl, #(_gameSprites + 0x002b)
	ld	(hl), #0x1f
	ld	hl, #(_gameSprites + 0x002c)
	ld	(hl), #0x0f
	ld	hl, #(_gameSprites + 0x002d)
	ld	(hl), #0x0f
	ld	hl, #(_gameSprites + 0x002e)
	ld	(hl), #0x06
	ld	hl, #(_gameSprites + 0x002f)
	ld	(hl), #0x06
	ld	hl, #(_gameSprites + 0x0030)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x0031)
	ld	(hl), #0x02
	ld	hl, #(_gameSprites + 0x0032)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x0033)
	ld	(hl), #0x02
	ld	hl, #(_gameSprites + 0x0034)
	ld	(hl), #0x1e
	ld	hl, #(_gameSprites + 0x0035)
	ld	(hl), #0xe2
	ld	hl, #(_gameSprites + 0x0036)
	ld	(hl), #0x02
	ld	hl, #(_gameSprites + 0x0037)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x0038)
	ld	(hl), #0xe2
	ld	hl, #(_gameSprites + 0x0039)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x003a)
	ld	(hl), #0xf2
	ld	hl, #(_gameSprites + 0x003b)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x003c)
	ld	(hl), #0x1c
	ld	hl, #(_gameSprites + 0x003d)
	ld	(hl), #0x1c
	ld	hl, #(_gameSprites + 0x003e)
	ld	(hl), #0x0c
	ld	hl, #(_gameSprites + 0x003f)
	ld	(hl), #0x0c
	ld	hl, #(_gameSprites + 0x0040)
	ld	(hl), #0x5f
	ld	hl, #(_gameSprites + 0x0041)
	ld	(hl), #0x5f
	ld	hl, #(_gameSprites + 0x0042)
	ld	(hl), #0x3f
	ld	hl, #(_gameSprites + 0x0043)
	ld	(hl), #0x30
	ld	hl, #(_gameSprites + 0x0044)
	ld	(hl), #0x7f
	ld	hl, #(_gameSprites + 0x0045)
	ld	(hl), #0x60
	ld	hl, #(_gameSprites + 0x0046)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0047)
	ld	(hl), #0x80
	ld	hl, #(_gameSprites + 0x0048)
	ld	(hl), #0xcf
	ld	hl, #(_gameSprites + 0x0049)
	ld	(hl), #0x90
	ld	hl, #(_gameSprites + 0x004a)
	ld	(hl), #0xe7
	ld	hl, #(_gameSprites + 0x004b)
	ld	(hl), #0x98
	ld	hl, #(_gameSprites + 0x004c)
	ld	(hl), #0xeb
	ld	hl, #(_gameSprites + 0x004d)
	ld	(hl), #0x94
	ld	hl, #(_gameSprites + 0x004e)
	ld	(hl), #0xe1
	ld	hl, #(_gameSprites + 0x004f)
	ld	(hl), #0x9e
	ld	hl, #(_gameSprites + 0x0050)
	ld	(hl), #0xfa
	ld	hl, #(_gameSprites + 0x0051)
	ld	(hl), #0xfa
	ld	hl, #(_gameSprites + 0x0052)
	ld	(hl), #0xfc
	ld	hl, #(_gameSprites + 0x0053)
	ld	(hl), #0x0c
	ld	hl, #(_gameSprites + 0x0054)
	ld	(hl), #0xfe
	ld	hl, #(_gameSprites + 0x0055)
	ld	(hl), #0x06
	ld	hl, #(_gameSprites + 0x0056)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0057)
	ld	(hl), #0x01
	ld	hl, #(_gameSprites + 0x0058)
	ld	(hl), #0xf7
	ld	hl, #(_gameSprites + 0x0059)
	ld	(hl), #0x09
	ld	hl, #(_gameSprites + 0x005a)
	ld	(hl), #0xe7
	ld	hl, #(_gameSprites + 0x005b)
	ld	(hl), #0x19
	ld	hl, #(_gameSprites + 0x005c)
	ld	(hl), #0xd7
	ld	hl, #(_gameSprites + 0x005d)
	ld	(hl), #0x29
	ld	hl, #(_gameSprites + 0x005e)
	ld	(hl), #0x87
	ld	hl, #(_gameSprites + 0x005f)
	ld	(hl), #0x79
	ld	hl, #(_gameSprites + 0x0060)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0061)
	ld	(hl), #0x80
	ld	hl, #(_gameSprites + 0x0062)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0063)
	ld	(hl), #0x80
	ld	hl, #(_gameSprites + 0x0064)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0065)
	ld	(hl), #0x80
	ld	hl, #(_gameSprites + 0x0066)
	ld	(hl), #0xbf
	ld	hl, #(_gameSprites + 0x0067)
	ld	(hl), #0xc0
	ld	hl, #(_gameSprites + 0x0068)
	ld	(hl), #0x9c
	ld	hl, #(_gameSprites + 0x0069)
	ld	(hl), #0xe3
	ld	hl, #(_gameSprites + 0x006a)
	ld	(hl), #0x88
	ld	hl, #(_gameSprites + 0x006b)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x006c)
	ld	(hl), #0xd5
	ld	hl, #(_gameSprites + 0x006d)
	ld	(hl), #0xf7
	ld	hl, #(_gameSprites + 0x006e)
	ld	(hl), #0xa2
	ld	hl, #(_gameSprites + 0x006f)
	ld	(hl), #0xa2
	ld	hl, #(_gameSprites + 0x0070)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0071)
	ld	(hl), #0x01
	ld	hl, #(_gameSprites + 0x0072)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0073)
	ld	(hl), #0x01
	ld	hl, #(_gameSprites + 0x0074)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x0075)
	ld	(hl), #0x01
	ld	hl, #(_gameSprites + 0x0076)
	ld	(hl), #0xfd
	ld	hl, #(_gameSprites + 0x0077)
	ld	(hl), #0x03
	ld	hl, #(_gameSprites + 0x0078)
	ld	(hl), #0xf9
	ld	hl, #(_gameSprites + 0x0079)
	ld	(hl), #0x07
	ld	hl, #(_gameSprites + 0x007a)
	ld	(hl), #0x21
	ld	hl, #(_gameSprites + 0x007b)
	ld	(hl), #0xff
	ld	hl, #(_gameSprites + 0x007c)
	ld	(hl), #0x55
	ld	hl, #(_gameSprites + 0x007d)
	ld	(hl), #0xdf
	ld	hl, #(_gameSprites + 0x007e)
	ld	(hl), #0x8b
	ld	hl, #(_gameSprites + 0x007f)
	ld	(hl), #0x8b
	ld	hl, #(_gameSprites + 0x0080)
	ld	(hl), #0x20
	ld	hl, #(_gameSprites + 0x0081)
	ld	(hl), #0x20
	ld	hl, #(_gameSprites + 0x0082)
	ld	(hl), #0x70
	ld	hl, #(_gameSprites + 0x0083)
	ld	(hl), #0x70
	ld	hl, #(_gameSprites + 0x0084)
	ld	(hl), #0x88
	ld	hl, #(_gameSprites + 0x0085)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x0086)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x0087)
	ld	(hl), #0x88
	ld	hl, #(_gameSprites + 0x0088)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x0089)
	ld	(hl), #0x88
	ld	hl, #(_gameSprites + 0x008a)
	ld	(hl), #0x88
	ld	hl, #(_gameSprites + 0x008b)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x008c)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x008d)
	ld	(hl), #0xf8
	ld	hl, #(_gameSprites + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_gameSprites + 0x008f)
	ld	(hl), #0x00
;game.c:14: UBYTE spritesize = 8;
	ld	hl, #_spritesize
	ld	(hl), #0x08
;game.c:15: UBYTE idBala = 4;
	ld	hl, #_idBala
	ld	(hl), #0x04
;game.c:16: UBYTE idInimigo = 9;
	ld	hl, #_idInimigo
	ld	(hl), #0x09
;game.c:17: UBYTE spriteBala = 8;
	ld	hl, #_spriteBala
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
;game.c:19: void performantdelay(UINT8 numloops){ // nova funcao delay
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;game.c:21: for(i = 0; i < numloops; i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;game.c:22: wait_vbl_done();
	call	_wait_vbl_done
;game.c:21: for(i = 0; i < numloops; i++){
	inc	c
;game.c:24: }
	jr	00103$
;game.c:25: void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter
; ---------------------------------
_setPositionGameCharacter::
	add	sp, #-3
;game.c:26: move_sprite(character->spriteIds[0], x, y);
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
;game.c:27: move_sprite(character->spriteIds[1], x + spritesize, y);
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
;game.c:28: move_sprite(character->spriteIds[2], x, y + spritesize);
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
;game.c:29: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
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
;game.c:29: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
;game.c:30: }
	add	sp, #3
	ret
;game.c:33: void setupAstronauta(){
;	---------------------------------
; Function setupAstronauta
; ---------------------------------
_setupAstronauta::
;game.c:34: astronauta.x = 80;
	ld	bc, #_astronauta+0
	ld	hl, #(_astronauta + 0x0004)
	ld	(hl), #0x50
;game.c:35: astronauta.y = 128;
	ld	hl, #(_astronauta + 0x0005)
	ld	(hl), #0x80
;game.c:36: astronauta.width = 16;
	ld	hl, #(_astronauta + 0x0008)
	ld	(hl), #0x10
;game.c:37: astronauta.height = 16;
	ld	hl, #(_astronauta + 0x0009)
	ld	(hl), #0x10
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;game.c:41: astronauta.spriteIds[0] = 0;
	xor	a, a
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;game.c:43: astronauta.spriteIds[1] = 1;
	ld	hl, #(_astronauta + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;game.c:45: astronauta.spriteIds[2] = 2;
	ld	hl, #(_astronauta + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;game.c:47: astronauta.spriteIds[3] = 3;
	ld	hl, #(_astronauta + 0x0003)
	ld	(hl), #0x03
;game.c:49: setPositionGameCharacter(&astronauta, astronauta.x, astronauta.y);
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
;game.c:50: }
	ret
;game.c:52: void setupInimigo(struct personagem* enemy){
;	---------------------------------
; Function setupInimigo
; ---------------------------------
_setupInimigo::
;game.c:54: enemy->x = 0;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x00
;game.c:55: enemy->y = 0;
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x00
;game.c:56: enemy->width = 16;
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x10
;game.c:57: enemy->height = 16;
	ld	hl, #0x0009
	add	hl, de
	ld	(hl), #0x10
;game.c:58: enemy->ativo = 0;
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x00
;game.c:61: set_sprite_tile(idInimigo, 4);
	ld	hl, #_idInimigo
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x04
;game.c:62: enemy->spriteIds[0] = idInimigo;
	ld	hl, #_idInimigo
	ld	a, (hl)
	ld	(de), a
;game.c:63: idInimigo++;
	inc	(hl)
;game.c:65: set_sprite_tile(idInimigo, 5);
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x05
;game.c:66: enemy->spriteIds[1] = idInimigo;
	ld	c, e
	ld	b, d
	inc	bc
	ld	hl, #_idInimigo
	ld	a, (hl)
	ld	(bc), a
;game.c:67: idInimigo++;
	inc	(hl)
;game.c:69: set_sprite_tile(idInimigo, 6);
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x06
;game.c:70: enemy->spriteIds[2] = idInimigo;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	hl, #_idInimigo
	ld	a, (hl)
	ld	(bc), a
;game.c:71: idInimigo++;
	inc	(hl)
;game.c:73: set_sprite_tile(idInimigo, 7);
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:999: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x07
;game.c:74: enemy->spriteIds[3] = idInimigo;
	inc	de
	inc	de
	inc	de
	ld	hl, #_idInimigo
	ld	a, (hl)
	ld	(de), a
;game.c:75: idInimigo++;
	inc	(hl)
;game.c:76: }
	ret
;game.c:79: void moveInimigo1(struct personagem* enemy,struct personagem* astronaut){
;	---------------------------------
; Function moveInimigo1
; ---------------------------------
_moveInimigo1::
	add	sp, #-9
;game.c:80: if(enemy->ativo==1){
	ldhl	sp,#11
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	dec	a
	jp	NZ,00106$
;game.c:81: if(enemy->y+enemy->height+3<=180){
	ld	hl, #0x0005
	add	hl, bc
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
	inc	hl
	ld	(hl), a
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x0009
	add	hl, bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	inc	hl
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ldhl	sp,	#5
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;game.c:101: setPositionGameCharacter(enemy,enemy->x,enemy->y);
	ld	hl, #0x0004
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
;game.c:81: if(enemy->y+enemy->height+3<=180){
	ldhl	sp,	#5
	ld	a, #0xb4
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 00120$
	bit	7, d
	jr	NZ, 00121$
	cp	a, a
	jr	00121$
00120$:
	bit	7, d
	jr	Z, 00121$
	scf
00121$:
	jr	C, 00102$
;game.c:82: enemy->y=enemy->y+1;
	ldhl	sp,	#4
	ld	a, (hl)
	inc	a
	dec	hl
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:101: setPositionGameCharacter(enemy,enemy->x,enemy->y);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,#7
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	h, a
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
	jr	00106$
00102$:
;game.c:103: enemy->ativo=0;
	pop	hl
	push	hl
	ld	(hl), #0x00
;game.c:104: enemy->y=0;
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;game.c:105: enemy->x=160;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0xa0
;game.c:106: setPositionGameCharacter(enemy,enemy->x,enemy->y);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,#7
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	h, a
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
00106$:
;game.c:110: }
	add	sp, #9
	ret
;game.c:112: UINT8 checarColisaoPersonagem(struct personagem* one,struct personagem* two){
;	---------------------------------
; Function checarColisaoPersonagem
; ---------------------------------
_checarColisaoPersonagem::
	add	sp, #-16
;game.c:114: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
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
	ld	hl, #0x0008
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
	ld	hl, #0x0009
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
	ld	hl, #0x0008
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
	ld	hl, #0x0009
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
;game.c:115: }
	add	sp, #16
	ret
;game.c:117: UINT8 checarColisaoBala(struct personagem* one,struct bala* two){
;	---------------------------------
; Function checarColisaoBala
; ---------------------------------
_checarColisaoBala::
	add	sp, #-14
;game.c:119: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
	ldhl	sp,	#16
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
	ldhl	sp,	#2
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	ld	a, e
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
;c
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
;c
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#6
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
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
	jp	C, 00108$
;c
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
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
	ldhl	sp,	#2
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
	jr	C, 00108$
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#12
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	inc	hl
	ld	a, (hl)
	sub	a, c
	inc	hl
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
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
	jr	C, 00108$
;c
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#12
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
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
	jp	NC, 00104$
00108$:
	ldhl	sp,	#6
	ld	e, l
	ld	d, h
	ldhl	sp,	#2
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00160$
	bit	7, d
	jr	NZ, 00161$
	cp	a, a
	jr	00161$
00160$:
	bit	7, d
	jr	Z, 00161$
	scf
00161$:
	jp	C, 00103$
;c
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#2
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
	jr	Z, 00162$
	bit	7, d
	jr	NZ, 00163$
	cp	a, a
	jr	00163$
00162$:
	bit	7, d
	jr	Z, 00163$
	scf
00163$:
	jp	C, 00103$
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#12
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00164$
	bit	7, d
	jr	NZ, 00165$
	cp	a, a
	jr	00165$
00164$:
	bit	7, d
	jr	Z, 00165$
	scf
00165$:
	jr	C, 00103$
;c
	pop	de
	push	de
	ld	hl, #0x0009
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
	ld	(hl), a
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#6
	ld	e, l
	ld	d, h
	ldhl	sp,	#12
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00166$
	bit	7, d
	jr	NZ, 00167$
	cp	a, a
	jr	00167$
00166$:
	bit	7, d
	jr	Z, 00167$
	scf
00167$:
	jr	NC, 00104$
00103$:
	xor	a, a
	ldhl	sp,	#13
	ld	(hl), a
	jr	00105$
00104$:
	ldhl	sp,	#13
	ld	(hl), #0x01
00105$:
	ldhl	sp,	#13
	ld	e, (hl)
;game.c:120: }
	add	sp, #14
	ret
;game.c:125: void setupBala(struct bala* bullet){
;	---------------------------------
; Function setupBala
; ---------------------------------
_setupBala::
;game.c:126: bullet->spriteIds=idBala;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (#_idBala)
	ld	(bc), a
;game.c:127: set_sprite_tile(idBala, spriteBala);
	ld	hl, #_spriteBala
	ld	c, (hl)
	ld	hl, #_idBala
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
;game.c:128: idBala++;
	ld	hl, #_idBala
	inc	(hl)
;game.c:129: bullet->width=5;
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x05
;game.c:130: bullet->height=7;
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x07
;game.c:131: bullet->ativo=0;
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
;game.c:132: }
	ret
;game.c:135: void moveBala(struct bala* bullet){
;	---------------------------------
; Function moveBala
; ---------------------------------
_moveBala::
	add	sp, #-9
;game.c:136: if(bullet->ativo==1){
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
;game.c:137: if(bullet->y+bullet->height-5>=-10){
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
;game.c:140: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
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
;game.c:137: if(bullet->y+bullet->height-5>=-10){
	ld	a, c
	sub	a, #0xf6
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00102$
;game.c:138: bullet->y=bullet->y-5;
	dec	hl
	dec	hl
	ld	a, (hl)
	add	a, #0xfb
	ld	c, a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:139: performantdelay(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
;game.c:140: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
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
;game.c:140: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	jr	00108$
00102$:
;game.c:142: bullet->ativo=0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x00
;game.c:143: move_sprite(bullet->spriteIds,150,0);
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
;game.c:143: move_sprite(bullet->spriteIds,150,0);
00108$:
;game.c:146: }
	add	sp, #9
	ret
;game.c:148: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-81
;game.c:150: set_bkg_data(0, 10, backTiles);
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
;game.c:151: set_bkg_tiles(0, 0, 20, 36, simpleMap);
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
;game.c:152: set_sprite_data(0, 9, gameSprites);
	ld	hl, #_gameSprites
	push	hl
	ld	a, #0x09
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;game.c:161: setupBala(&projetil1);
	ldhl	sp,	#0
	ld	a, l
	ld	d, h
	ldhl	sp,	#50
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_setupBala
	add	sp, #2
;game.c:162: setupBala(&projetil2);
	ldhl	sp,	#6
	ld	a, l
	ld	d, h
	ldhl	sp,	#52
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_setupBala
	add	sp, #2
;game.c:163: setupBala(&projetil3);
	ldhl	sp,	#12
	ld	a, l
	ld	d, h
	ldhl	sp,	#54
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_setupBala
	add	sp, #2
;game.c:164: setupBala(&projetil4);
	ldhl	sp,	#18
	ld	a, l
	ld	d, h
	ldhl	sp,	#56
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_setupBala
	add	sp, #2
;game.c:165: setupBala(&projetil5);
	ldhl	sp,	#24
	ld	a, l
	ld	d, h
	ldhl	sp,	#58
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_setupBala
	add	sp, #2
;game.c:168: setupInimigo(&inimigo1);
	ldhl	sp,	#30
	ld	a, l
	ld	d, h
	ldhl	sp,	#60
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_setupInimigo
	add	sp, #2
;game.c:170: setupInimigo(&inimigo2);
	ldhl	sp,	#40
	push	hl
	call	_setupInimigo
	add	sp, #2
;game.c:172: setupAstronauta();
	call	_setupAstronauta
;game.c:174: UINT8 colisaoPersonagem=0;
	xor	a, a
	ldhl	sp,	#62
	ld	(hl), a
;game.c:175: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;game.c:176: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;game.c:177: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;game.c:179: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;game.c:181: while(colisaoPersonagem==0){
	ldhl	sp,	#50
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#63
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#60
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#65
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#50
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#67
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#52
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#69
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#54
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#71
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#56
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#73
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#58
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#75
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#60
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#77
	ld	(hl+), a
	ld	(hl), e
00127$:
	ldhl	sp,	#62
	ld	a, (hl)
	or	a, a
	jp	NZ, 00131$
;c:/gbdk/include/gb/gb.h:770: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	inc	a
	ldh	(_SCY_REG+0),a
;game.c:183: colisaoPersonagem=checarColisaoBala(&inimigo1,&projetil1);
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	de
	push	bc
	call	_checarColisaoBala
	add	sp, #4
	ldhl	sp,	#62
	ld	(hl), e
;game.c:184: moveBala(&projetil1);
	ldhl	sp,#67
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:185: moveBala(&projetil2);
	ldhl	sp,#69
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:186: moveBala(&projetil3);
	ldhl	sp,#71
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:187: moveBala(&projetil4);
	ldhl	sp,#73
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:188: moveBala(&projetil5);
	ldhl	sp,#75
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:189: moveInimigo1(&inimigo1,&astronauta);
	ld	de, #_astronauta
	ldhl	sp,#77
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	de
	push	bc
	call	_moveInimigo1
	add	sp, #4
;game.c:192: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, e
	jr	Z, 00102$
;game.c:193: (astronauta.x-8-2) < 0 ? (astronauta.x=astronauta.x) : (astronauta.x=astronauta.x-2);
	ld	hl, #(_astronauta + 0x0004)
	ld	c, (hl)
	ld	a, c
	ld	e, #0x00
	add	a, #0xf6
	ld	a, e
	adc	a, #0xff
	bit	7,a
	jr	Z, 00133$
	ld	hl, #(_astronauta + 0x0004)
	ld	(hl), c
	jr	00134$
00133$:
	dec	c
	dec	c
	ld	hl, #(_astronauta + 0x0004)
	ld	(hl), c
00134$:
;game.c:196: setPositionGameCharacter(&astronauta, astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	b, (hl)
	ld	hl, #(_astronauta + 0x0004)
	ld	c, (hl)
	push	bc
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
00102$:
;game.c:199: if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00104$
;game.c:200: (astronauta.x+8) >= 160 ? (astronauta.x=astronauta.x) : (astronauta.x=astronauta.x+2);
	ld	a, (#(_astronauta + 0x0004) + 0)
	ldhl	sp,	#80
	ld	(hl), a
	ldhl	sp,	#80
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
	jr	C, 00135$
	ld	de, #(_astronauta + 0x0004)
	ldhl	sp,	#80
	ld	a, (hl)
	ld	(de), a
	jr	00136$
00135$:
	ldhl	sp,	#80
	ld	a, (hl)
	add	a, #0x02
	ld	(#(_astronauta + 0x0004)),a
00136$:
;game.c:202: setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	b, (hl)
	ld	hl, #(_astronauta + 0x0004)
	ld	c, (hl)
	push	bc
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
00104$:
;game.c:205: if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00106$
;game.c:207: (astronauta.y-16) <= 20 ? (astronauta.y=astronauta.y) : (astronauta.y=astronauta.y-2);
	ld	hl, #(_astronauta + 0x0005)
	ld	c, (hl)
	ld	a, c
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
	jr	Z, 00229$
	bit	7, d
	jr	NZ, 00230$
	cp	a, a
	jr	00230$
00229$:
	bit	7, d
	jr	Z, 00230$
	scf
00230$:
	jr	C, 00137$
	ld	hl, #(_astronauta + 0x0005)
	ld	(hl), c
	jr	00138$
00137$:
	dec	c
	dec	c
	ld	hl, #(_astronauta + 0x0005)
	ld	(hl), c
00138$:
;game.c:208: setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	b, (hl)
	ld	hl, #(_astronauta + 0x0004)
	ld	c, (hl)
	push	bc
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
00106$:
;game.c:211: if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00108$
;game.c:213: (astronauta.y) >= 128 ? (astronauta.y=astronauta.y) : (astronauta.y=astronauta.y+2);
	ld	a, (#(_astronauta + 0x0005) + 0)
	cp	a, #0x80
	jr	C, 00139$
	ld	(#(_astronauta + 0x0005)),a
	jr	00140$
00139$:
	add	a, #0x02
	ld	(#(_astronauta + 0x0005)),a
00140$:
;game.c:214: setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
	ld	hl, #(_astronauta + 0x0005)
	ld	b, (hl)
	ld	hl, #(_astronauta + 0x0004)
	ld	c, (hl)
	push	bc
	ld	hl, #_astronauta
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
00108$:
;game.c:217: if(joypad() & J_A){
	call	_joypad
	bit	4, e
	jp	Z,00124$
;game.c:218: if( projetil1.ativo==0){
;c
	ldhl	sp,#50
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#81
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#80
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00121$
;game.c:219: projetil1.x=astronauta.x+4;
	ld	a, (#(_astronauta + 0x0004) + 0)
	add	a, #0x04
	ld	c, a
	ldhl	sp,	#50
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:220: projetil1.y=astronauta.y-2;
	ldhl	sp,#50
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	a, (#(_astronauta + 0x0005) + 0)
	dec	a
	dec	a
	ld	(bc), a
;game.c:221: projetil1.ativo=1;
	ldhl	sp,	#79
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00124$
00121$:
;game.c:222: }else if(projetil2.ativo==0){
	ldhl	sp,#52
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00118$
;game.c:223: projetil2.x=astronauta.x+4;
	ld	a, (#(_astronauta + 0x0004) + 0)
	add	a, #0x04
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:224: projetil2.y=astronauta.y-2;
;c
	ldhl	sp,#52
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#81
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#80
	ld	(hl), a
	ld	a, (#(_astronauta + 0x0005) + 0)
	dec	a
	dec	a
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:225: projetil2.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jp	00124$
00118$:
;game.c:226: }else if(projetil3.ativo==0){
	ldhl	sp,#54
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00115$
;game.c:227: projetil3.x=astronauta.x+4;
	ld	a, (#(_astronauta + 0x0004) + 0)
	add	a, #0x04
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:228: projetil3.y=astronauta.y-2;
;c
	ldhl	sp,#54
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#81
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#80
	ld	(hl), a
	ld	a, (#(_astronauta + 0x0005) + 0)
	dec	a
	dec	a
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:229: projetil3.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jr	00124$
00115$:
;game.c:230: }else if(projetil4.ativo==0){
	ldhl	sp,#56
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00112$
;game.c:231: projetil4.x=astronauta.x+4;
	ld	a, (#(_astronauta + 0x0004) + 0)
	add	a, #0x04
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:232: projetil4.y=astronauta.y-2;
;c
	ldhl	sp,#56
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#81
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#80
	ld	(hl), a
	ld	a, (#(_astronauta + 0x0005) + 0)
	dec	a
	dec	a
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:233: projetil4.ativo=1;
	ld	a, #0x01
	ld	(bc), a
	jr	00124$
00112$:
;game.c:234: }else if(projetil5.ativo==0){
	ldhl	sp,#58
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	NZ, 00124$
;game.c:235: projetil5.x=astronauta.x+4;
	ld	a, (#(_astronauta + 0x0004) + 0)
	add	a, #0x04
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:236: projetil5.y=astronauta.y-2;
;c
	ldhl	sp,#58
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#81
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#80
	ld	(hl), a
	ld	a, (#(_astronauta + 0x0005) + 0)
	dec	a
	dec	a
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;game.c:237: projetil5.ativo=1;
	ld	a, #0x01
	ld	(bc), a
00124$:
;game.c:242: if(joypad() & J_SELECT){
	call	_joypad
	bit	6, e
	jr	Z, 00126$
;game.c:243: inimigo1.ativo=1;
;c
	ldhl	sp,#60
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#81
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#80
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
;game.c:244: inimigo1.x=astronauta.x;
;c
	ldhl	sp,#60
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#(_astronauta + 0x0004) + 0)
	ld	(bc), a
;game.c:245: inimigo1.y=0;
;c
	ldhl	sp,#60
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
00126$:
;game.c:248: performantdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00127$
00131$:
;game.c:258: }
	add	sp, #81
	ret
	.area _CODE
	.area _CABS (ABS)
