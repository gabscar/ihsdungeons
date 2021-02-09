;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module game
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _hUGE_mute_channel
	.globl _hUGE_dosound
	.globl _hUGE_init
	.globl _somTiro
	.globl _hitSubBoss
	.globl _hitPersonagem
	.globl _hitMinnion
	.globl _ghostShot
	.globl _checarColisaoBalaSubBoss
	.globl _checarColisaoBalaEnemy
	.globl _checarColisaoBala
	.globl _checarColisaoPersonagem
	.globl _moveSubBoss
	.globl _moveInimigo1
	.globl _moveBalaEnemy
	.globl _moveBala
	.globl _moveOutBulletEnemy
	.globl _moveOutBullet
	.globl _moveOutMinnion
	.globl _setPositionGameCharacter2
	.globl _setPositionGameCharacter
	.globl _sumScore
	.globl _setupScore
	.globl _setPositionBullet
	.globl _setupBalaEnemy
	.globl _setupBala
	.globl _setupSubBoss
	.globl _setupHero
	.globl _setupEnemy
	.globl _puts
	.globl _sprintf
	.globl _printf
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpad
	.globl _joypad
	.globl _add_VBL
	.globl _spritesize
	.globl _spritesizes
	.globl _spriteId
	.globl _score
	.globl _desertoTiles
	.globl _desertoMato
	.globl _projetilMiniboss
	.globl _projetil
	.globl _MiniBossOgro
	.globl _ghostHit
	.globl _ghost
	.globl _protagonista
	.globl _pattern2
	.globl _pattern1
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
_ghostHit::
	.ds 64
_MiniBossOgro::
	.ds 144
_projetil::
	.ds 32
_projetilMiniboss::
	.ds 16
_desertoMato::
	.ds 720
_desertoTiles::
	.ds 400
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
;../design/ghostHit.c:26: unsigned char ghostHit[] =
	ld	hl, #_ghostHit
	ld	(hl), #0x5f
	ld	hl, #(_ghostHit + 0x0001)
	ld	(hl), #0x5f
	ld	hl, #(_ghostHit + 0x0002)
	ld	(hl), #0x3f
	ld	hl, #(_ghostHit + 0x0003)
	ld	(hl), #0x30
	ld	hl, #(_ghostHit + 0x0004)
	ld	(hl), #0x7f
	ld	hl, #(_ghostHit + 0x0005)
	ld	(hl), #0x60
	ld	hl, #(_ghostHit + 0x0006)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0007)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x0008)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0009)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x000a)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x000b)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x000c)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x000d)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x000e)
	ld	(hl), #0xe1
	ld	hl, #(_ghostHit + 0x000f)
	ld	(hl), #0x9e
	ld	hl, #(_ghostHit + 0x0010)
	ld	(hl), #0xfa
	ld	hl, #(_ghostHit + 0x0011)
	ld	(hl), #0xfa
	ld	hl, #(_ghostHit + 0x0012)
	ld	(hl), #0xfc
	ld	hl, #(_ghostHit + 0x0013)
	ld	(hl), #0x0c
	ld	hl, #(_ghostHit + 0x0014)
	ld	(hl), #0xfe
	ld	hl, #(_ghostHit + 0x0015)
	ld	(hl), #0x06
	ld	hl, #(_ghostHit + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0017)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0019)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x001b)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x001d)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x001e)
	ld	(hl), #0x87
	ld	hl, #(_ghostHit + 0x001f)
	ld	(hl), #0x79
	ld	hl, #(_ghostHit + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0021)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x0022)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0023)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x0024)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0025)
	ld	(hl), #0x80
	ld	hl, #(_ghostHit + 0x0026)
	ld	(hl), #0xbf
	ld	hl, #(_ghostHit + 0x0027)
	ld	(hl), #0xc0
	ld	hl, #(_ghostHit + 0x0028)
	ld	(hl), #0x9c
	ld	hl, #(_ghostHit + 0x0029)
	ld	(hl), #0xe3
	ld	hl, #(_ghostHit + 0x002a)
	ld	(hl), #0x88
	ld	hl, #(_ghostHit + 0x002b)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x002c)
	ld	(hl), #0xd5
	ld	hl, #(_ghostHit + 0x002d)
	ld	(hl), #0xf7
	ld	hl, #(_ghostHit + 0x002e)
	ld	(hl), #0xa2
	ld	hl, #(_ghostHit + 0x002f)
	ld	(hl), #0xa2
	ld	hl, #(_ghostHit + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0031)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x0032)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0033)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x0034)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x0035)
	ld	(hl), #0x01
	ld	hl, #(_ghostHit + 0x0036)
	ld	(hl), #0xfd
	ld	hl, #(_ghostHit + 0x0037)
	ld	(hl), #0x03
	ld	hl, #(_ghostHit + 0x0038)
	ld	(hl), #0xf9
	ld	hl, #(_ghostHit + 0x0039)
	ld	(hl), #0x07
	ld	hl, #(_ghostHit + 0x003a)
	ld	(hl), #0x21
	ld	hl, #(_ghostHit + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_ghostHit + 0x003c)
	ld	(hl), #0x55
	ld	hl, #(_ghostHit + 0x003d)
	ld	(hl), #0xdf
	ld	hl, #(_ghostHit + 0x003e)
	ld	(hl), #0x8b
	ld	hl, #(_ghostHit + 0x003f)
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
;../design/projetilMiniboss.c:26: unsigned char projetilMiniboss[] =
	ld	hl, #_projetilMiniboss
	ld	(hl), #0xa0
	ld	hl, #(_projetilMiniboss + 0x0001)
	ld	(hl), #0xe0
	ld	hl, #(_projetilMiniboss + 0x0002)
	ld	(hl), #0x40
	ld	hl, #(_projetilMiniboss + 0x0003)
	ld	(hl), #0xe0
	ld	hl, #(_projetilMiniboss + 0x0004)
	ld	(hl), #0xa0
	ld	hl, #(_projetilMiniboss + 0x0005)
	ld	(hl), #0xe0
	ld	hl, #(_projetilMiniboss + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_projetilMiniboss + 0x000f)
	ld	(hl), #0x00
;../design/New_Background/desertoMato.c:25: unsigned char desertoMato[] =
	ld	hl, #_desertoMato
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0001)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0002)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0003)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0004)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0005)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0006)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0007)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0008)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0009)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x000a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x000b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x000c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x000d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x000e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x000f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0010)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0011)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0012)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0013)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0014)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0015)
	ld	(hl), #0x05
	ld	hl, #(_desertoMato + 0x0016)
	ld	(hl), #0x06
	ld	hl, #(_desertoMato + 0x0017)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0018)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0019)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x001a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x001b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x001c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x001d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x001e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x001f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0020)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0021)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0022)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0023)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0024)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0025)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0026)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0027)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0028)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0029)
	ld	(hl), #0x07
	ld	hl, #(_desertoMato + 0x002a)
	ld	(hl), #0x08
	ld	hl, #(_desertoMato + 0x002b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x002c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x002d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x002e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x002f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0030)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0031)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0032)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0033)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0034)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0035)
	ld	(hl), #0x09
	ld	hl, #(_desertoMato + 0x0036)
	ld	(hl), #0x0a
	ld	hl, #(_desertoMato + 0x0037)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0038)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0039)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x003a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x003b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x003c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x003d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x003e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x003f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0040)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0041)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0042)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0043)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0044)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0045)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0046)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0047)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0048)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0049)
	ld	(hl), #0x0b
	ld	hl, #(_desertoMato + 0x004a)
	ld	(hl), #0x0c
	ld	hl, #(_desertoMato + 0x004b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x004c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x004d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x004e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x004f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0050)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0051)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0052)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0053)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0054)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0055)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0056)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0057)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0058)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0059)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x005a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x005b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x005c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x005d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x005e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x005f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0060)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0061)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0062)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0063)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0064)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0065)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0066)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0067)
	ld	(hl), #0x15
	ld	hl, #(_desertoMato + 0x0068)
	ld	(hl), #0x16
	ld	hl, #(_desertoMato + 0x0069)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x006a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x006b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x006c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x006d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x006e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x006f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0070)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0071)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0072)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0073)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0074)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0075)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0076)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0077)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0078)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0079)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x007a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x007b)
	ld	(hl), #0x17
	ld	hl, #(_desertoMato + 0x007c)
	ld	(hl), #0x18
	ld	hl, #(_desertoMato + 0x007d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x007e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x007f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0080)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0081)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0082)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0083)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0084)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0085)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0086)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0087)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0088)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0089)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x008a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x008b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x008c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x008d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x008e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x008f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0090)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0091)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0092)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0093)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0094)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0095)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0096)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0097)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0098)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0099)
	ld	(hl), #0x0d
	ld	hl, #(_desertoMato + 0x009a)
	ld	(hl), #0x0e
	ld	hl, #(_desertoMato + 0x009b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x009c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x009d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x009e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x009f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00a9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00aa)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ab)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ac)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ad)
	ld	(hl), #0x0f
	ld	hl, #(_desertoMato + 0x00ae)
	ld	(hl), #0x10
	ld	hl, #(_desertoMato + 0x00af)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00b9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ba)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00bb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00bc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00bd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00be)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00bf)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00c9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ca)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00cb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00cc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00cd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ce)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00cf)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00d9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00da)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00db)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00dc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00dd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00de)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00df)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e3)
	ld	(hl), #0x09
	ld	hl, #(_desertoMato + 0x00e4)
	ld	(hl), #0x0a
	ld	hl, #(_desertoMato + 0x00e5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00e9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ea)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00eb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ec)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ed)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ee)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ef)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00f7)
	ld	(hl), #0x0b
	ld	hl, #(_desertoMato + 0x00f8)
	ld	(hl), #0x0c
	ld	hl, #(_desertoMato + 0x00f9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00fa)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00fb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00fc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00fd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00fe)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x00ff)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0100)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0101)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0102)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0103)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0104)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0105)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0106)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0107)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0108)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0109)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x010a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x010b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x010c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x010d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x010e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x010f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0110)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0111)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0112)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0113)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0114)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0115)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0116)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0117)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0118)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0119)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x011a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x011b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x011c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x011d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x011e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x011f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0120)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0121)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0122)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0123)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0124)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0125)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0126)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0127)
	ld	(hl), #0x05
	ld	hl, #(_desertoMato + 0x0128)
	ld	(hl), #0x06
	ld	hl, #(_desertoMato + 0x0129)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x012a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x012b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x012c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x012d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x012e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x012f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0130)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0131)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0132)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0133)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0134)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0135)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0136)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0137)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0138)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0139)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x013a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x013b)
	ld	(hl), #0x07
	ld	hl, #(_desertoMato + 0x013c)
	ld	(hl), #0x08
	ld	hl, #(_desertoMato + 0x013d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x013e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x013f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0140)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0141)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0142)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0143)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0144)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0145)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0146)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0147)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0148)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0149)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x014a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x014b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x014c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x014d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x014e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x014f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0150)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0151)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0152)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0153)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0154)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0155)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0156)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0157)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0158)
	ld	(hl), #0x15
	ld	hl, #(_desertoMato + 0x0159)
	ld	(hl), #0x16
	ld	hl, #(_desertoMato + 0x015a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x015b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x015c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x015d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x015e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x015f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0160)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0161)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0162)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0163)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0164)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0165)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0166)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0167)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0168)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0169)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x016a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x016b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x016c)
	ld	(hl), #0x17
	ld	hl, #(_desertoMato + 0x016d)
	ld	(hl), #0x18
	ld	hl, #(_desertoMato + 0x016e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x016f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0170)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0171)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0172)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0173)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0174)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0175)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0176)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0177)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0178)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0179)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x017a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x017b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x017c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x017d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x017e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x017f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0180)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0181)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0182)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0183)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0184)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0185)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0186)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0187)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0188)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0189)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x018a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x018b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x018c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x018d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x018e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x018f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0190)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0191)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0192)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0193)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0194)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0195)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0196)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0197)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0198)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0199)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x019a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x019b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x019c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x019d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x019e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x019f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01a9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01aa)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ab)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ac)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ad)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ae)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01af)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01b9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ba)
	ld	(hl), #0x05
	ld	hl, #(_desertoMato + 0x01bb)
	ld	(hl), #0x06
	ld	hl, #(_desertoMato + 0x01bc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01bd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01be)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01bf)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c6)
	ld	(hl), #0x15
	ld	hl, #(_desertoMato + 0x01c7)
	ld	(hl), #0x16
	ld	hl, #(_desertoMato + 0x01c8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01c9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ca)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01cb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01cc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01cd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ce)
	ld	(hl), #0x07
	ld	hl, #(_desertoMato + 0x01cf)
	ld	(hl), #0x08
	ld	hl, #(_desertoMato + 0x01d0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01d9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01da)
	ld	(hl), #0x17
	ld	hl, #(_desertoMato + 0x01db)
	ld	(hl), #0x18
	ld	hl, #(_desertoMato + 0x01dc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01dd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01de)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01df)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01e9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ea)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01eb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ec)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ed)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ee)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ef)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01f9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01fa)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01fb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01fc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01fd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01fe)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x01ff)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0200)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0201)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0202)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0203)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0204)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0205)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0206)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0207)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0208)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0209)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x020a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x020b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x020c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x020d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x020e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x020f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0210)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0211)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0212)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0213)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0214)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0215)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0216)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0217)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0218)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0219)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x021a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x021b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x021c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x021d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x021e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x021f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0220)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0221)
	ld	(hl), #0x0d
	ld	hl, #(_desertoMato + 0x0222)
	ld	(hl), #0x0e
	ld	hl, #(_desertoMato + 0x0223)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0224)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0225)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0226)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0227)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0228)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0229)
	ld	(hl), #0x09
	ld	hl, #(_desertoMato + 0x022a)
	ld	(hl), #0x0a
	ld	hl, #(_desertoMato + 0x022b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x022c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x022d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x022e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x022f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0230)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0231)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0232)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0233)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0234)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0235)
	ld	(hl), #0x0f
	ld	hl, #(_desertoMato + 0x0236)
	ld	(hl), #0x10
	ld	hl, #(_desertoMato + 0x0237)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0238)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0239)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x023a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x023b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x023c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x023d)
	ld	(hl), #0x0b
	ld	hl, #(_desertoMato + 0x023e)
	ld	(hl), #0x0c
	ld	hl, #(_desertoMato + 0x023f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0240)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0241)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0242)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0243)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0244)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0245)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0246)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0247)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0248)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0249)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x024a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x024b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x024c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x024d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x024e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x024f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0250)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0251)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0252)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0253)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0254)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0255)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0256)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0257)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0258)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0259)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x025a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x025b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x025c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x025d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x025e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x025f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0260)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0261)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0262)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0263)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0264)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0265)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0266)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0267)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0268)
	ld	(hl), #0x05
	ld	hl, #(_desertoMato + 0x0269)
	ld	(hl), #0x06
	ld	hl, #(_desertoMato + 0x026a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x026b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x026c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x026d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x026e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x026f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0270)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0271)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0272)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0273)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0274)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0275)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0276)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0277)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0278)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0279)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x027a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x027b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x027c)
	ld	(hl), #0x07
	ld	hl, #(_desertoMato + 0x027d)
	ld	(hl), #0x08
	ld	hl, #(_desertoMato + 0x027e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x027f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0280)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0281)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0282)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0283)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0284)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0285)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0286)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0287)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0288)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0289)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x028a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x028b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x028c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x028d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x028e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x028f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0290)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0291)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0292)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0293)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0294)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0295)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0296)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0297)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0298)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x0299)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x029a)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x029b)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x029c)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x029d)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x029e)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x029f)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02a9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02aa)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02ab)
	ld	(hl), #0x11
	ld	hl, #(_desertoMato + 0x02ac)
	ld	(hl), #0x12
	ld	hl, #(_desertoMato + 0x02ad)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02ae)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02af)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b0)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02b9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02ba)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02bb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02bc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02bd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02be)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02bf)
	ld	(hl), #0x13
	ld	hl, #(_desertoMato + 0x02c0)
	ld	(hl), #0x14
	ld	hl, #(_desertoMato + 0x02c1)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c2)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c3)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c4)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c5)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c6)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c7)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c8)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02c9)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02ca)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02cb)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02cc)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02cd)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02ce)
	ld	(hl), #0x04
	ld	hl, #(_desertoMato + 0x02cf)
	ld	(hl), #0x04
;../design/New_Background/desertoTiles.c:26: unsigned char desertoTiles[] =
	ld	hl, #_desertoTiles
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0012)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0023)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0025)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0027)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x002b)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x002d)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x002f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0032)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0033)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0034)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0035)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0036)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0037)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0038)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0039)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x003a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x003c)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x003d)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0040)
	ld	(hl), #0xcf
	ld	hl, #(_desertoTiles + 0x0041)
	ld	(hl), #0x30
	ld	hl, #(_desertoTiles + 0x0042)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x0043)
	ld	(hl), #0x03
	ld	hl, #(_desertoTiles + 0x0044)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x0045)
	ld	(hl), #0xe0
	ld	hl, #(_desertoTiles + 0x0046)
	ld	(hl), #0xf9
	ld	hl, #(_desertoTiles + 0x0047)
	ld	(hl), #0x06
	ld	hl, #(_desertoTiles + 0x0048)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x004a)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x004b)
	ld	(hl), #0xe0
	ld	hl, #(_desertoTiles + 0x004c)
	ld	(hl), #0xf3
	ld	hl, #(_desertoTiles + 0x004d)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x004e)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x004f)
	ld	(hl), #0x03
	ld	hl, #(_desertoTiles + 0x0050)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0051)
	ld	(hl), #0x01
	ld	hl, #(_desertoTiles + 0x0052)
	ld	(hl), #0x9f
	ld	hl, #(_desertoTiles + 0x0053)
	ld	(hl), #0x63
	ld	hl, #(_desertoTiles + 0x0054)
	ld	(hl), #0xfd
	ld	hl, #(_desertoTiles + 0x0055)
	ld	(hl), #0x04
	ld	hl, #(_desertoTiles + 0x0056)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0057)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x0058)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0059)
	ld	(hl), #0xc4
	ld	hl, #(_desertoTiles + 0x005a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x005b)
	ld	(hl), #0x24
	ld	hl, #(_desertoTiles + 0x005c)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x005d)
	ld	(hl), #0x78
	ld	hl, #(_desertoTiles + 0x005e)
	ld	(hl), #0x8f
	ld	hl, #(_desertoTiles + 0x005f)
	ld	(hl), #0xf0
	ld	hl, #(_desertoTiles + 0x0060)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x0061)
	ld	(hl), #0x07
	ld	hl, #(_desertoTiles + 0x0062)
	ld	(hl), #0xcf
	ld	hl, #(_desertoTiles + 0x0063)
	ld	(hl), #0xb0
	ld	hl, #(_desertoTiles + 0x0064)
	ld	(hl), #0x7f
	ld	hl, #(_desertoTiles + 0x0065)
	ld	(hl), #0xc0
	ld	hl, #(_desertoTiles + 0x0066)
	ld	(hl), #0x7c
	ld	hl, #(_desertoTiles + 0x0067)
	ld	(hl), #0xc7
	ld	hl, #(_desertoTiles + 0x0068)
	ld	(hl), #0x7b
	ld	hl, #(_desertoTiles + 0x0069)
	ld	(hl), #0xea
	ld	hl, #(_desertoTiles + 0x006a)
	ld	(hl), #0x7f
	ld	hl, #(_desertoTiles + 0x006b)
	ld	(hl), #0xcb
	ld	hl, #(_desertoTiles + 0x006c)
	ld	(hl), #0xbb
	ld	hl, #(_desertoTiles + 0x006d)
	ld	(hl), #0x76
	ld	hl, #(_desertoTiles + 0x006e)
	ld	(hl), #0xf7
	ld	hl, #(_desertoTiles + 0x006f)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x0070)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0071)
	ld	(hl), #0x70
	ld	hl, #(_desertoTiles + 0x0072)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0073)
	ld	(hl), #0x28
	ld	hl, #(_desertoTiles + 0x0074)
	ld	(hl), #0xfb
	ld	hl, #(_desertoTiles + 0x0075)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x0076)
	ld	(hl), #0xfb
	ld	hl, #(_desertoTiles + 0x0077)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0078)
	ld	(hl), #0xfa
	ld	hl, #(_desertoTiles + 0x0079)
	ld	(hl), #0x0d
	ld	hl, #(_desertoTiles + 0x007a)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x007b)
	ld	(hl), #0x0b
	ld	hl, #(_desertoTiles + 0x007c)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x007d)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x007e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x007f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0080)
	ld	(hl), #0x7f
	ld	hl, #(_desertoTiles + 0x0081)
	ld	(hl), #0x38
	ld	hl, #(_desertoTiles + 0x0082)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0083)
	ld	(hl), #0x40
	ld	hl, #(_desertoTiles + 0x0084)
	ld	(hl), #0xf1
	ld	hl, #(_desertoTiles + 0x0085)
	ld	(hl), #0x4e
	ld	hl, #(_desertoTiles + 0x0086)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0087)
	ld	(hl), #0x40
	ld	hl, #(_desertoTiles + 0x0088)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x0089)
	ld	(hl), #0x43
	ld	hl, #(_desertoTiles + 0x008a)
	ld	(hl), #0x7f
	ld	hl, #(_desertoTiles + 0x008b)
	ld	(hl), #0xe0
	ld	hl, #(_desertoTiles + 0x008c)
	ld	(hl), #0x63
	ld	hl, #(_desertoTiles + 0x008d)
	ld	(hl), #0xdc
	ld	hl, #(_desertoTiles + 0x008e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x008f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0090)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x0091)
	ld	(hl), #0xe0
	ld	hl, #(_desertoTiles + 0x0092)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0093)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0094)
	ld	(hl), #0xe3
	ld	hl, #(_desertoTiles + 0x0095)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0096)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0097)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0098)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x0099)
	ld	(hl), #0xf3
	ld	hl, #(_desertoTiles + 0x009a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x009b)
	ld	(hl), #0x01
	ld	hl, #(_desertoTiles + 0x009c)
	ld	(hl), #0xfe
	ld	hl, #(_desertoTiles + 0x009d)
	ld	(hl), #0x03
	ld	hl, #(_desertoTiles + 0x009e)
	ld	(hl), #0xc7
	ld	hl, #(_desertoTiles + 0x009f)
	ld	(hl), #0x3a
	ld	hl, #(_desertoTiles + 0x00a0)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x00a1)
	ld	(hl), #0xc0
	ld	hl, #(_desertoTiles + 0x00a2)
	ld	(hl), #0xf3
	ld	hl, #(_desertoTiles + 0x00a3)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x00a4)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x00a6)
	ld	(hl), #0x9c
	ld	hl, #(_desertoTiles + 0x00a7)
	ld	(hl), #0x63
	ld	hl, #(_desertoTiles + 0x00a8)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00a9)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x00aa)
	ld	(hl), #0xc4
	ld	hl, #(_desertoTiles + 0x00ab)
	ld	(hl), #0x3b
	ld	hl, #(_desertoTiles + 0x00ac)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00ad)
	ld	(hl), #0x80
	ld	hl, #(_desertoTiles + 0x00ae)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00af)
	ld	(hl), #0x98
	ld	hl, #(_desertoTiles + 0x00b0)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00b1)
	ld	(hl), #0x02
	ld	hl, #(_desertoTiles + 0x00b2)
	ld	(hl), #0xfe
	ld	hl, #(_desertoTiles + 0x00b3)
	ld	(hl), #0x33
	ld	hl, #(_desertoTiles + 0x00b4)
	ld	(hl), #0xee
	ld	hl, #(_desertoTiles + 0x00b5)
	ld	(hl), #0x3b
	ld	hl, #(_desertoTiles + 0x00b6)
	ld	(hl), #0x2e
	ld	hl, #(_desertoTiles + 0x00b7)
	ld	(hl), #0xfb
	ld	hl, #(_desertoTiles + 0x00b8)
	ld	(hl), #0xfe
	ld	hl, #(_desertoTiles + 0x00b9)
	ld	(hl), #0x2b
	ld	hl, #(_desertoTiles + 0x00ba)
	ld	(hl), #0xfd
	ld	hl, #(_desertoTiles + 0x00bb)
	ld	(hl), #0x2e
	ld	hl, #(_desertoTiles + 0x00bc)
	ld	(hl), #0xe1
	ld	hl, #(_desertoTiles + 0x00bd)
	ld	(hl), #0x3e
	ld	hl, #(_desertoTiles + 0x00be)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00bf)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00c0)
	ld	(hl), #0xf7
	ld	hl, #(_desertoTiles + 0x00c1)
	ld	(hl), #0x9c
	ld	hl, #(_desertoTiles + 0x00c2)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x00c3)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x00c4)
	ld	(hl), #0x0f
	ld	hl, #(_desertoTiles + 0x00c5)
	ld	(hl), #0xf4
	ld	hl, #(_desertoTiles + 0x00c6)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x00c7)
	ld	(hl), #0xc4
	ld	hl, #(_desertoTiles + 0x00c8)
	ld	(hl), #0x6f
	ld	hl, #(_desertoTiles + 0x00c9)
	ld	(hl), #0x98
	ld	hl, #(_desertoTiles + 0x00ca)
	ld	(hl), #0x8c
	ld	hl, #(_desertoTiles + 0x00cb)
	ld	(hl), #0x7b
	ld	hl, #(_desertoTiles + 0x00cc)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x00cd)
	ld	(hl), #0xe8
	ld	hl, #(_desertoTiles + 0x00ce)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00cf)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00d0)
	ld	(hl), #0x8f
	ld	hl, #(_desertoTiles + 0x00d1)
	ld	(hl), #0x70
	ld	hl, #(_desertoTiles + 0x00d2)
	ld	(hl), #0xf9
	ld	hl, #(_desertoTiles + 0x00d3)
	ld	(hl), #0x06
	ld	hl, #(_desertoTiles + 0x00d4)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00d5)
	ld	(hl), #0x60
	ld	hl, #(_desertoTiles + 0x00d6)
	ld	(hl), #0xd3
	ld	hl, #(_desertoTiles + 0x00d7)
	ld	(hl), #0x7d
	ld	hl, #(_desertoTiles + 0x00d8)
	ld	(hl), #0xaf
	ld	hl, #(_desertoTiles + 0x00d9)
	ld	(hl), #0xd9
	ld	hl, #(_desertoTiles + 0x00da)
	ld	(hl), #0xdf
	ld	hl, #(_desertoTiles + 0x00db)
	ld	(hl), #0x67
	ld	hl, #(_desertoTiles + 0x00dc)
	ld	(hl), #0xee
	ld	hl, #(_desertoTiles + 0x00dd)
	ld	(hl), #0x33
	ld	hl, #(_desertoTiles + 0x00de)
	ld	(hl), #0x36
	ld	hl, #(_desertoTiles + 0x00df)
	ld	(hl), #0xd9
	ld	hl, #(_desertoTiles + 0x00e0)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x00e1)
	ld	(hl), #0x58
	ld	hl, #(_desertoTiles + 0x00e2)
	ld	(hl), #0xb8
	ld	hl, #(_desertoTiles + 0x00e3)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x00e4)
	ld	(hl), #0x9f
	ld	hl, #(_desertoTiles + 0x00e5)
	ld	(hl), #0xf0
	ld	hl, #(_desertoTiles + 0x00e6)
	ld	(hl), #0x19
	ld	hl, #(_desertoTiles + 0x00e7)
	ld	(hl), #0xf6
	ld	hl, #(_desertoTiles + 0x00e8)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x00e9)
	ld	(hl), #0xe8
	ld	hl, #(_desertoTiles + 0x00ea)
	ld	(hl), #0x17
	ld	hl, #(_desertoTiles + 0x00eb)
	ld	(hl), #0xee
	ld	hl, #(_desertoTiles + 0x00ec)
	ld	(hl), #0x71
	ld	hl, #(_desertoTiles + 0x00ed)
	ld	(hl), #0x8f
	ld	hl, #(_desertoTiles + 0x00ee)
	ld	(hl), #0xe3
	ld	hl, #(_desertoTiles + 0x00ef)
	ld	(hl), #0x1e
	ld	hl, #(_desertoTiles + 0x00f0)
	ld	(hl), #0xfb
	ld	hl, #(_desertoTiles + 0x00f1)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x00f2)
	ld	(hl), #0x3d
	ld	hl, #(_desertoTiles + 0x00f3)
	ld	(hl), #0xc6
	ld	hl, #(_desertoTiles + 0x00f4)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x00f5)
	ld	(hl), #0x07
	ld	hl, #(_desertoTiles + 0x00f6)
	ld	(hl), #0xc6
	ld	hl, #(_desertoTiles + 0x00f7)
	ld	(hl), #0x3b
	ld	hl, #(_desertoTiles + 0x00f8)
	ld	(hl), #0xfe
	ld	hl, #(_desertoTiles + 0x00f9)
	ld	(hl), #0x07
	ld	hl, #(_desertoTiles + 0x00fa)
	ld	(hl), #0x3e
	ld	hl, #(_desertoTiles + 0x00fb)
	ld	(hl), #0xc3
	ld	hl, #(_desertoTiles + 0x00fc)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x00fd)
	ld	(hl), #0x19
	ld	hl, #(_desertoTiles + 0x00fe)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x00ff)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0100)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x0101)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0102)
	ld	(hl), #0xef
	ld	hl, #(_desertoTiles + 0x0103)
	ld	(hl), #0x18
	ld	hl, #(_desertoTiles + 0x0104)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x0105)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0106)
	ld	(hl), #0x67
	ld	hl, #(_desertoTiles + 0x0107)
	ld	(hl), #0x9e
	ld	hl, #(_desertoTiles + 0x0108)
	ld	(hl), #0x07
	ld	hl, #(_desertoTiles + 0x0109)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x010a)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x010b)
	ld	(hl), #0xfb
	ld	hl, #(_desertoTiles + 0x010c)
	ld	(hl), #0x0f
	ld	hl, #(_desertoTiles + 0x010d)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x010e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x010f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0110)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0111)
	ld	(hl), #0xc0
	ld	hl, #(_desertoTiles + 0x0112)
	ld	(hl), #0xf9
	ld	hl, #(_desertoTiles + 0x0113)
	ld	(hl), #0x06
	ld	hl, #(_desertoTiles + 0x0114)
	ld	(hl), #0xcf
	ld	hl, #(_desertoTiles + 0x0115)
	ld	(hl), #0x30
	ld	hl, #(_desertoTiles + 0x0116)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0117)
	ld	(hl), #0x01
	ld	hl, #(_desertoTiles + 0x0118)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0119)
	ld	(hl), #0xc9
	ld	hl, #(_desertoTiles + 0x011a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x011b)
	ld	(hl), #0x15
	ld	hl, #(_desertoTiles + 0x011c)
	ld	(hl), #0x97
	ld	hl, #(_desertoTiles + 0x011d)
	ld	(hl), #0x7d
	ld	hl, #(_desertoTiles + 0x011e)
	ld	(hl), #0xf7
	ld	hl, #(_desertoTiles + 0x011f)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0120)
	ld	(hl), #0xc7
	ld	hl, #(_desertoTiles + 0x0121)
	ld	(hl), #0x38
	ld	hl, #(_desertoTiles + 0x0122)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0123)
	ld	(hl), #0x40
	ld	hl, #(_desertoTiles + 0x0124)
	ld	(hl), #0xf9
	ld	hl, #(_desertoTiles + 0x0125)
	ld	(hl), #0xa6
	ld	hl, #(_desertoTiles + 0x0126)
	ld	(hl), #0xbf
	ld	hl, #(_desertoTiles + 0x0127)
	ld	(hl), #0x60
	ld	hl, #(_desertoTiles + 0x0128)
	ld	(hl), #0x27
	ld	hl, #(_desertoTiles + 0x0129)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x012a)
	ld	(hl), #0x7c
	ld	hl, #(_desertoTiles + 0x012b)
	ld	(hl), #0xa3
	ld	hl, #(_desertoTiles + 0x012c)
	ld	(hl), #0x7f
	ld	hl, #(_desertoTiles + 0x012d)
	ld	(hl), #0xa0
	ld	hl, #(_desertoTiles + 0x012e)
	ld	(hl), #0xbf
	ld	hl, #(_desertoTiles + 0x012f)
	ld	(hl), #0xe4
	ld	hl, #(_desertoTiles + 0x0130)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0131)
	ld	(hl), #0x14
	ld	hl, #(_desertoTiles + 0x0132)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0133)
	ld	(hl), #0xd5
	ld	hl, #(_desertoTiles + 0x0134)
	ld	(hl), #0xf7
	ld	hl, #(_desertoTiles + 0x0135)
	ld	(hl), #0x3d
	ld	hl, #(_desertoTiles + 0x0136)
	ld	(hl), #0x27
	ld	hl, #(_desertoTiles + 0x0137)
	ld	(hl), #0xfd
	ld	hl, #(_desertoTiles + 0x0138)
	ld	(hl), #0xef
	ld	hl, #(_desertoTiles + 0x0139)
	ld	(hl), #0x3d
	ld	hl, #(_desertoTiles + 0x013a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x013b)
	ld	(hl), #0x29
	ld	hl, #(_desertoTiles + 0x013c)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x013d)
	ld	(hl), #0x29
	ld	hl, #(_desertoTiles + 0x013e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x013f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0140)
	ld	(hl), #0xbf
	ld	hl, #(_desertoTiles + 0x0141)
	ld	(hl), #0xea
	ld	hl, #(_desertoTiles + 0x0142)
	ld	(hl), #0xbf
	ld	hl, #(_desertoTiles + 0x0143)
	ld	(hl), #0x6a
	ld	hl, #(_desertoTiles + 0x0144)
	ld	(hl), #0xbb
	ld	hl, #(_desertoTiles + 0x0145)
	ld	(hl), #0x6e
	ld	hl, #(_desertoTiles + 0x0146)
	ld	(hl), #0x3b
	ld	hl, #(_desertoTiles + 0x0147)
	ld	(hl), #0xee
	ld	hl, #(_desertoTiles + 0x0148)
	ld	(hl), #0x7f
	ld	hl, #(_desertoTiles + 0x0149)
	ld	(hl), #0xca
	ld	hl, #(_desertoTiles + 0x014a)
	ld	(hl), #0x7b
	ld	hl, #(_desertoTiles + 0x014b)
	ld	(hl), #0xae
	ld	hl, #(_desertoTiles + 0x014c)
	ld	(hl), #0x7b
	ld	hl, #(_desertoTiles + 0x014d)
	ld	(hl), #0xae
	ld	hl, #(_desertoTiles + 0x014e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x014f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0150)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0151)
	ld	(hl), #0xc0
	ld	hl, #(_desertoTiles + 0x0152)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x0153)
	ld	(hl), #0x07
	ld	hl, #(_desertoTiles + 0x0154)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0155)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0156)
	ld	(hl), #0xe3
	ld	hl, #(_desertoTiles + 0x0157)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0158)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0159)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x015a)
	ld	(hl), #0x9c
	ld	hl, #(_desertoTiles + 0x015b)
	ld	(hl), #0x63
	ld	hl, #(_desertoTiles + 0x015c)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x015d)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x015e)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x015f)
	ld	(hl), #0xe3
	ld	hl, #(_desertoTiles + 0x0160)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0161)
	ld	(hl), #0xc0
	ld	hl, #(_desertoTiles + 0x0162)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0163)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0164)
	ld	(hl), #0xc7
	ld	hl, #(_desertoTiles + 0x0165)
	ld	(hl), #0x38
	ld	hl, #(_desertoTiles + 0x0166)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0167)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x0168)
	ld	(hl), #0x9c
	ld	hl, #(_desertoTiles + 0x0169)
	ld	(hl), #0x63
	ld	hl, #(_desertoTiles + 0x016a)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x016b)
	ld	(hl), #0x00
	ld	hl, #(_desertoTiles + 0x016c)
	ld	(hl), #0xf3
	ld	hl, #(_desertoTiles + 0x016d)
	ld	(hl), #0x0c
	ld	hl, #(_desertoTiles + 0x016e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x016f)
	ld	(hl), #0xe0
	ld	hl, #(_desertoTiles + 0x0170)
	ld	(hl), #0xfc
	ld	hl, #(_desertoTiles + 0x0171)
	ld	(hl), #0x1f
	ld	hl, #(_desertoTiles + 0x0172)
	ld	(hl), #0xe0
	ld	hl, #(_desertoTiles + 0x0173)
	ld	(hl), #0x3b
	ld	hl, #(_desertoTiles + 0x0174)
	ld	(hl), #0xe1
	ld	hl, #(_desertoTiles + 0x0175)
	ld	(hl), #0x3e
	ld	hl, #(_desertoTiles + 0x0176)
	ld	(hl), #0xef
	ld	hl, #(_desertoTiles + 0x0177)
	ld	(hl), #0x30
	ld	hl, #(_desertoTiles + 0x0178)
	ld	(hl), #0xcf
	ld	hl, #(_desertoTiles + 0x0179)
	ld	(hl), #0x70
	ld	hl, #(_desertoTiles + 0x017a)
	ld	(hl), #0x9e
	ld	hl, #(_desertoTiles + 0x017b)
	ld	(hl), #0xe1
	ld	hl, #(_desertoTiles + 0x017c)
	ld	(hl), #0x98
	ld	hl, #(_desertoTiles + 0x017d)
	ld	(hl), #0xa7
	ld	hl, #(_desertoTiles + 0x017e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x017f)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x0180)
	ld	(hl), #0x3f
	ld	hl, #(_desertoTiles + 0x0181)
	ld	(hl), #0xf0
	ld	hl, #(_desertoTiles + 0x0182)
	ld	(hl), #0x0f
	ld	hl, #(_desertoTiles + 0x0183)
	ld	(hl), #0xf8
	ld	hl, #(_desertoTiles + 0x0184)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x0185)
	ld	(hl), #0x1c
	ld	hl, #(_desertoTiles + 0x0186)
	ld	(hl), #0xe7
	ld	hl, #(_desertoTiles + 0x0187)
	ld	(hl), #0x1e
	ld	hl, #(_desertoTiles + 0x0188)
	ld	(hl), #0xe3
	ld	hl, #(_desertoTiles + 0x0189)
	ld	(hl), #0x1e
	ld	hl, #(_desertoTiles + 0x018a)
	ld	(hl), #0x01
	ld	hl, #(_desertoTiles + 0x018b)
	ld	(hl), #0xf7
	ld	hl, #(_desertoTiles + 0x018c)
	ld	(hl), #0x01
	ld	hl, #(_desertoTiles + 0x018d)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x018e)
	ld	(hl), #0xff
	ld	hl, #(_desertoTiles + 0x018f)
	ld	(hl), #0xff
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
;personagem.c:4: UINT8 spriteId=0;
	ld	hl, #_spriteId
	ld	(hl), #0x00
;personagem.c:5: UBYTE spritesizes = 8;
	ld	hl, #_spritesizes
	ld	(hl), #0x08
;movimentacao.c:6: UBYTE spritesize = 8;
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
;personagem.c:55: void setupEnemy(struct personagem *enemy,UINT8 start,UINT8 end,UINT8 vida){
;	---------------------------------
; Function setupEnemy
; ---------------------------------
_setupEnemy::
	add	sp, #-2
;personagem.c:56: enemy->x = 0;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:57: enemy->y = 0;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:58: enemy->width = 16;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:59: enemy->height = 16;
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:60: enemy->ativo = 0;
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:61: enemy->vida = vida;
	ld	hl, #0x0007
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;personagem.c:63: for(UINT8 i=start; i<end ; i++){
	dec	hl
	dec	hl
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
;personagem.c:64: set_sprite_tile(spriteId, i);
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:65: enemy->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:66: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:67: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:63: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:69: }
	add	sp, #2
	ret
;personagem.c:71: void setupHero(struct personagem *hero,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupHero
; ---------------------------------
_setupHero::
	add	sp, #-2
;personagem.c:72: hero->x = 80;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x50
;personagem.c:73: hero->y = 128;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x80
;personagem.c:74: hero->width = 16;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:75: hero->height = 16;
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x10
;personagem.c:76: hero->ativo = 1;
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x01
;personagem.c:77: hero->vida = 150;
	ld	hl, #0x0007
	add	hl, bc
	ld	(hl), #0x96
;personagem.c:79: for(UINT8 i=start; i<end ; i++){
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
;personagem.c:80: set_sprite_tile(spriteId, i);
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:81: hero->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:82: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:83: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:79: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:85: }
	add	sp, #2
	ret
;personagem.c:87: void setupSubBoss(struct subBoss *miniBoss,UINT8 start,UINT8 end){
;	---------------------------------
; Function setupSubBoss
; ---------------------------------
_setupSubBoss::
	add	sp, #-2
;personagem.c:88: miniBoss->x = 0;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:89: miniBoss->y = 0;
	ld	hl, #0x000a
	add	hl, bc
	ld	(hl), #0x00
;personagem.c:90: miniBoss->width = 24;
	ld	hl, #0x000e
	add	hl, bc
	ld	(hl), #0x18
;personagem.c:91: miniBoss->height = 24;
	ld	hl, #0x000f
	add	hl, bc
	ld	(hl), #0x18
;personagem.c:92: miniBoss->ativo = 1;
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x01
;personagem.c:93: miniBoss->vida = 500;
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0xf4
;personagem.c:94: miniBoss->orientacao = 1;
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
;personagem.c:96: for(UINT8 i=start; i<end ; i++){
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
;personagem.c:97: set_sprite_tile(spriteId, i);
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:98: miniBoss->spriteIds[aux] = spriteId;
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:99: aux++;
	ldhl	sp,	#1
	inc	(hl)
;personagem.c:100: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:96: for(UINT8 i=start; i<end ; i++){
	ldhl	sp,	#0
	inc	(hl)
	jr	00104$
00106$:
;personagem.c:102: }
	add	sp, #2
	ret
;personagem.c:104: void setupBala(struct bala* bullet,UINT8 spriteBala){
;	---------------------------------
; Function setupBala
; ---------------------------------
_setupBala::
;personagem.c:105: bullet->spriteIds=spriteId;
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
;personagem.c:106: set_sprite_tile(spriteId, spriteBala);
	ldhl	sp,	#4
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:107: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:108: bullet->width=3;
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x03
;personagem.c:109: bullet->height=3;
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x03
;personagem.c:110: bullet->ativo=0;
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
;personagem.c:111: }
	ret
;personagem.c:113: void setupBalaEnemy(struct balaEnemy* bullet,UINT8 spriteBala){
;	---------------------------------
; Function setupBalaEnemy
; ---------------------------------
_setupBalaEnemy::
;personagem.c:114: bullet->spriteIds=spriteId;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#_spriteId)
	ld	(bc), a
;personagem.c:115: set_sprite_tile(spriteId, spriteBala);
	ldhl	sp,	#4
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:116: spriteId++;
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:117: bullet->width=3;
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x03
;personagem.c:118: bullet->height=3;
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x03
;personagem.c:119: bullet->ativo=0;
	inc	de
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
;personagem.c:120: }
	ret
;personagem.c:122: void setPositionBullet(struct subBoss* miniBoss,struct balaEnemy* bullet){
;	---------------------------------
; Function setPositionBullet
; ---------------------------------
_setPositionBullet::
	add	sp, #-2
;personagem.c:123: bullet->ativo=1;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x01
;personagem.c:124: bullet->x=miniBoss->x+12;
	ldhl	sp,	#4
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
	ld	e, l
	ld	d, h
	ld	a, (de)
	add	a, #0x0c
	ld	(bc), a
;personagem.c:125: bullet->xEnemy=miniBoss->x;
	ld	l, c
	ld	h, b
	inc	hl
	ld	a, (de)
	ld	(hl), a
;personagem.c:126: bullet->y=miniBoss->y+22;
	inc	bc
	inc	bc
;c
	pop	de
	push	de
	ld	hl, #0x000a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	add	a, #0x16
	ld	(bc), a
;personagem.c:127: }
	add	sp, #2
	ret
;personagem.c:131: void setupScore(struct scorePoint *score, UINT8 start,UINT8 x, UINT8 y){   
;	---------------------------------
; Function setupScore
; ---------------------------------
_setupScore::
	add	sp, #-19
;personagem.c:134: score->valor=0;
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
;personagem.c:135: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:136: score->spriteIds[i] = spriteId;
	pop	de
	push	de
	ld	a, (#_spriteId)
	ld	(de), a
;personagem.c:137: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:139: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:140: score->spriteIds[i] = spriteId;
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
;personagem.c:141: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:143: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:144: score->spriteIds[i] = spriteId;
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
;personagem.c:145: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:147: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:148: score->spriteIds[i] = spriteId;
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
;personagem.c:149: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:151: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:152: score->spriteIds[i] = spriteId;
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
;personagem.c:153: start++; spriteId++; i++;
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
	ld	hl, #_spriteId
	inc	(hl)
;personagem.c:155: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
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
;personagem.c:156: score->spriteIds[i] = spriteId;
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
;personagem.c:157: spriteId++; i++;
	inc	(hl)
;personagem.c:160: for (UINT8 j = 0; j < 11; j++){
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
;personagem.c:161: score->spriteTiles[j]=aux;
	ld	l, b
	ld	h, #0x00
	add	hl, de
	ld	(hl), c
;personagem.c:162: aux++;
	inc	c
;personagem.c:160: for (UINT8 j = 0; j < 11; j++){
	inc	b
	jr	00121$
00101$:
;personagem.c:165: set_sprite_tile(spriteId, start);
	ldhl	sp,	#23
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:166: score->spriteIds[i] = spriteId;
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
;personagem.c:167: spriteId++; i++;
	inc	(hl)
;personagem.c:169: set_sprite_tile(spriteId, start);
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:170: score->spriteIds[i] = spriteId;
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
;personagem.c:171: spriteId++; i++;start++;
	inc	(hl)
	ld	a, c
	inc	a
	ldhl	sp,	#23
	ld	(hl), a
;personagem.c:173: set_sprite_tile(spriteId, start);
	ld	c, (hl)
	ld	hl, #_spriteId
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:174: score->spriteIds[i] = spriteId;
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
;personagem.c:175: spriteId++; i++;
	inc	(hl)
;personagem.c:177: move_sprite(score->spriteIds[0], x, y);
	ldhl	sp,	#25
	ld	a, (hl)
	ldhl	sp,	#18
	ld	(hl), a
	ldhl	sp,	#24
	ld	c, (hl)
	pop	de
	push	de
	ld	a, (de)
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:178: move_sprite(score->spriteIds[1], x + spritesizes, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, b
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(de), a
;personagem.c:179: move_sprite(score->spriteIds[2], x + 2*spritesizes, y);
	ld	a, (#_spritesizes)
	add	a, a
	ldhl	sp,	#3
	ld	(hl), c
	add	a, (hl)
	ld	b, a
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, c
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;personagem.c:180: move_sprite(score->spriteIds[3], x + 3*spritesizes, y);
	ld	a, (#_spritesizes)
	ld	c, a
	add	a, a
	add	a, c
	ldhl	sp,	#3
	add	a, (hl)
	ld	c, a
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:181: move_sprite(score->spriteIds[4], x + 4*spritesizes, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:182: move_sprite(score->spriteIds[5], x + 5*spritesizes, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:183: move_sprite(score->spriteIds[6], x + 6*spritesizes, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:184: move_sprite(score->spriteIds[7], x + 7*spritesizes, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:185: move_sprite(score->spriteIds[8], x + 8*spritesizes, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_shadow_OAM)
	ld	e, a
	ld	a, h
	adc	a, #>(_shadow_OAM)
	ld	d, a
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;personagem.c:185: move_sprite(score->spriteIds[8], x + 8*spritesizes, y);
;personagem.c:186: }
	add	sp, #19
	ret
;personagem.c:188: void sumScore(struct scorePoint *score,UINT16 value){
;	---------------------------------
; Function sumScore
; ---------------------------------
_sumScore::
	add	sp, #-13
;personagem.c:190: score->valor= score->valor+value ;
	ldhl	sp,	#15
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
	ld	e, l
	ld	d, h
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;personagem.c:191: if(score->valor>9999){
	ld	a, #0x0f
	cp	a, e
	ld	a, #0x27
	sbc	a, d
	jr	NC, 00102$
;personagem.c:192: score->valor=0;
	ld	l, c
	ld	h, b
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00102$:
;personagem.c:190: score->valor= score->valor+value ;
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;personagem.c:194: UINT16 zero= (score->valor)/1000;
	push	bc
	ld	hl, #0x03e8
	push	hl
	push	bc
	call	__divuint
	add	sp, #4
	pop	bc
	ldhl	sp,	#10
	ld	a, e
	ld	(hl+), a
;personagem.c:195: UINT16 first= (score->valor - zero*1000)/ 100;
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	push	bc
	ld	hl, #0x0064
	push	hl
	push	bc
	call	__divuint
	add	sp, #4
	pop	bc
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
;personagem.c:196: UINT16 second= ((score->valor) - zero*1000 -first*100)/10;
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	push	bc
	ld	hl, #0x000a
	push	hl
	push	bc
	call	__divuint
	add	sp, #4
	pop	bc
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
;personagem.c:197: UINT16 third= (score->valor) - zero*1000 - first*100 -second*10;
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;personagem.c:200: set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
;personagem.c:199: if(zero==9){
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00128$
;personagem.c:200: set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0015
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:200: set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
	jp	00129$
00128$:
;personagem.c:201: }else if(zero==8){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00125$
;personagem.c:202: set_sprite_tile(score->spriteIds[5],score->spriteTiles[9]);
;c
	pop	de
	push	de
	ld	hl, #0x0014
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:202: set_sprite_tile(score->spriteIds[5],score->spriteTiles[9]);
	jp	00129$
00125$:
;personagem.c:203: }else if(zero==7){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00122$
;personagem.c:204: set_sprite_tile(score->spriteIds[5],score->spriteTiles[8]);
;c
	pop	de
	push	de
	ld	hl, #0x0013
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:204: set_sprite_tile(score->spriteIds[5],score->spriteTiles[8]);
	jp	00129$
00122$:
;personagem.c:205: }else if(zero==6){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00119$
;personagem.c:206: set_sprite_tile(score->spriteIds[5],score->spriteTiles[7]);
;c
	pop	de
	push	de
	ld	hl, #0x0012
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:206: set_sprite_tile(score->spriteIds[5],score->spriteTiles[7]);
	jp	00129$
00119$:
;personagem.c:207: }else if(zero==5){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00116$
;personagem.c:208: set_sprite_tile(score->spriteIds[5],score->spriteTiles[6]);
;c
	pop	de
	push	de
	ld	hl, #0x0011
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:208: set_sprite_tile(score->spriteIds[5],score->spriteTiles[6]);
	jp	00129$
00116$:
;personagem.c:209: }else if(zero==4){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00113$
;personagem.c:210: set_sprite_tile(score->spriteIds[5],score->spriteTiles[5]);
;c
	pop	de
	push	de
	ld	hl, #0x0010
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:210: set_sprite_tile(score->spriteIds[5],score->spriteTiles[5]);
	jp	00129$
00113$:
;personagem.c:211: }else if(zero==3){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00110$
;personagem.c:212: set_sprite_tile(score->spriteIds[5],score->spriteTiles[4]);
;c
	pop	de
	push	de
	ld	hl, #0x000f
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:212: set_sprite_tile(score->spriteIds[5],score->spriteTiles[4]);
	jp	00129$
00110$:
;personagem.c:213: }else if(zero==2){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00107$
;personagem.c:214: set_sprite_tile(score->spriteIds[5],score->spriteTiles[3]);
;c
	pop	de
	push	de
	ld	hl, #0x000e
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:214: set_sprite_tile(score->spriteIds[5],score->spriteTiles[3]);
	jr	00129$
00107$:
;personagem.c:215: }else if(zero==1){
	ldhl	sp,	#10
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00104$
;personagem.c:216: set_sprite_tile(score->spriteIds[5],score->spriteTiles[2]);
;c
	pop	de
	push	de
	ld	hl, #0x000d
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#12
	ld	b, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;personagem.c:216: set_sprite_tile(score->spriteIds[5],score->spriteTiles[2]);
	jr	00129$
00104$:
;personagem.c:218: set_sprite_tile(score->spriteIds[5],score->spriteTiles[0]);
;c
	pop	de
	push	de
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#12
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	xor	a, a
	sla	c
	adc	a, a
	sla	c
	adc	a, a
	dec	hl
	ld	(hl), c
	inc	hl
	ld	(hl), a
;c
	ld	de, #_shadow_OAM
	dec	hl
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
;personagem.c:218: set_sprite_tile(score->spriteIds[5],score->spriteTiles[0]);
00129$:
;personagem.c:223: set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
	ld	(hl), a
;personagem.c:222: if(first==9){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00155$
;personagem.c:223: set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0015
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00459$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00459$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:223: set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
	jp	00156$
00155$:
;personagem.c:224: }else if(first==8){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00152$
;personagem.c:225: set_sprite_tile(score->spriteIds[6],score->spriteTiles[9]);
;c
	pop	de
	push	de
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
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00462$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00462$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:225: set_sprite_tile(score->spriteIds[6],score->spriteTiles[9]);
	jp	00156$
00152$:
;personagem.c:226: }else if(first==7){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00149$
;personagem.c:227: set_sprite_tile(score->spriteIds[6],score->spriteTiles[8]);
;c
	pop	de
	push	de
	ld	hl, #0x0013
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00465$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00465$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:227: set_sprite_tile(score->spriteIds[6],score->spriteTiles[8]);
	jp	00156$
00149$:
;personagem.c:228: }else if(first==6){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00146$
;personagem.c:229: set_sprite_tile(score->spriteIds[6],score->spriteTiles[7]);
;c
	pop	de
	push	de
	ld	hl, #0x0012
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00468$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00468$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:229: set_sprite_tile(score->spriteIds[6],score->spriteTiles[7]);
	jp	00156$
00146$:
;personagem.c:230: }else if(first==5){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00143$
;personagem.c:231: set_sprite_tile(score->spriteIds[6],score->spriteTiles[6]);
;c
	pop	de
	push	de
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00471$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00471$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:231: set_sprite_tile(score->spriteIds[6],score->spriteTiles[6]);
	jp	00156$
00143$:
;personagem.c:232: }else if(first==4){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00140$
;personagem.c:233: set_sprite_tile(score->spriteIds[6],score->spriteTiles[5]);
;c
	pop	de
	push	de
	ld	hl, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00474$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00474$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:233: set_sprite_tile(score->spriteIds[6],score->spriteTiles[5]);
	jp	00156$
00140$:
;personagem.c:234: }else if(first==3){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00137$
;personagem.c:235: set_sprite_tile(score->spriteIds[6],score->spriteTiles[4]);
;c
	pop	de
	push	de
	ld	hl, #0x000f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00477$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00477$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:235: set_sprite_tile(score->spriteIds[6],score->spriteTiles[4]);
	jp	00156$
00137$:
;personagem.c:236: }else if(first==2){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00134$
;personagem.c:237: set_sprite_tile(score->spriteIds[6],score->spriteTiles[3]);
;c
	pop	de
	push	de
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00480$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00480$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:237: set_sprite_tile(score->spriteIds[6],score->spriteTiles[3]);
	jp	00156$
00134$:
;personagem.c:238: }else if(first==1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00131$
;personagem.c:239: set_sprite_tile(score->spriteIds[6],score->spriteTiles[2]);
;c
	pop	de
	push	de
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00483$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00483$
;c
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
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
;personagem.c:239: set_sprite_tile(score->spriteIds[6],score->spriteTiles[2]);
	jr	00156$
00131$:
;personagem.c:241: set_sprite_tile(score->spriteIds[6],score->spriteTiles[0]);
;c
	pop	de
	push	de
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#12
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00484$:
	ldhl	sp,	#11
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00484$
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
;personagem.c:241: set_sprite_tile(score->spriteIds[6],score->spriteTiles[0]);
00156$:
;personagem.c:245: set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
	ld	(hl), a
;personagem.c:244: if(second==9){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00182$
;personagem.c:245: set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0015
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00487$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00487$
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
;personagem.c:245: set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
	jp	00183$
00182$:
;personagem.c:246: }else if(second==8){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00179$
;personagem.c:247: set_sprite_tile(score->spriteIds[7],score->spriteTiles[9]);
;c
	pop	de
	push	de
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
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00490$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00490$
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
;personagem.c:247: set_sprite_tile(score->spriteIds[7],score->spriteTiles[9]);
	jp	00183$
00179$:
;personagem.c:248: }else if(second==7){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00176$
;personagem.c:249: set_sprite_tile(score->spriteIds[7],score->spriteTiles[8]);
;c
	pop	de
	push	de
	ld	hl, #0x0013
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00493$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00493$
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
;personagem.c:249: set_sprite_tile(score->spriteIds[7],score->spriteTiles[8]);
	jp	00183$
00176$:
;personagem.c:250: }else if(second==6){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00173$
;personagem.c:251: set_sprite_tile(score->spriteIds[7],score->spriteTiles[7]);
;c
	pop	de
	push	de
	ld	hl, #0x0012
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00496$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00496$
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
;personagem.c:251: set_sprite_tile(score->spriteIds[7],score->spriteTiles[7]);
	jp	00183$
00173$:
;personagem.c:252: }else if(second==5){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00170$
;personagem.c:253: set_sprite_tile(score->spriteIds[7],score->spriteTiles[6]);
;c
	pop	de
	push	de
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00499$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00499$
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
;personagem.c:253: set_sprite_tile(score->spriteIds[7],score->spriteTiles[6]);
	jp	00183$
00170$:
;personagem.c:254: }else if(second==4){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00167$
;personagem.c:255: set_sprite_tile(score->spriteIds[7],score->spriteTiles[5]);
;c
	pop	de
	push	de
	ld	hl, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00502$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00502$
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
;personagem.c:255: set_sprite_tile(score->spriteIds[7],score->spriteTiles[5]);
	jp	00183$
00167$:
;personagem.c:256: }else if(second==3){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00164$
;personagem.c:257: set_sprite_tile(score->spriteIds[7],score->spriteTiles[4]);
;c
	pop	de
	push	de
	ld	hl, #0x000f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00505$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00505$
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
;personagem.c:257: set_sprite_tile(score->spriteIds[7],score->spriteTiles[4]);
	jp	00183$
00164$:
;personagem.c:258: }else if(second==2){
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00161$
;personagem.c:259: set_sprite_tile(score->spriteIds[7],score->spriteTiles[3]);
;c
	pop	de
	push	de
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00508$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00508$
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
;personagem.c:259: set_sprite_tile(score->spriteIds[7],score->spriteTiles[3]);
	jp	00183$
00161$:
;personagem.c:260: }else if(second==1){
	ldhl	sp,	#4
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00158$
;personagem.c:261: set_sprite_tile(score->spriteIds[7],score->spriteTiles[2]);
;c
	pop	de
	push	de
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00511$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00511$
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
;personagem.c:261: set_sprite_tile(score->spriteIds[7],score->spriteTiles[2]);
	jr	00183$
00158$:
;personagem.c:263: set_sprite_tile(score->spriteIds[7],score->spriteTiles[0]);
;c
	pop	de
	push	de
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#12
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00512$:
	ldhl	sp,	#11
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00512$
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
;personagem.c:263: set_sprite_tile(score->spriteIds[7],score->spriteTiles[0]);
00183$:
;personagem.c:267: set_sprite_tile(score->spriteIds[8],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#12
	ld	(hl), a
;personagem.c:266: if(third==9){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x09
	inc	hl
	or	a, (hl)
	jr	NZ, 00209$
;personagem.c:267: set_sprite_tile(score->spriteIds[8],score->spriteTiles[10]);
;c
	pop	de
	push	de
	ld	hl, #0x0015
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00515$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00515$
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
;personagem.c:267: set_sprite_tile(score->spriteIds[8],score->spriteTiles[10]);
	jp	00251$
00209$:
;personagem.c:268: }else if(third==8){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	or	a, (hl)
	jr	NZ, 00206$
;personagem.c:269: set_sprite_tile(score->spriteIds[8],score->spriteTiles[9]);
;c
	pop	de
	push	de
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
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00518$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00518$
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
;personagem.c:269: set_sprite_tile(score->spriteIds[8],score->spriteTiles[9]);
	jp	00251$
00206$:
;personagem.c:270: }else if(third==7){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x07
	inc	hl
	or	a, (hl)
	jr	NZ, 00203$
;personagem.c:271: set_sprite_tile(score->spriteIds[8],score->spriteTiles[8]);
;c
	pop	de
	push	de
	ld	hl, #0x0013
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00521$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00521$
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
;personagem.c:271: set_sprite_tile(score->spriteIds[8],score->spriteTiles[8]);
	jp	00251$
00203$:
;personagem.c:272: }else if(third==6){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x06
	inc	hl
	or	a, (hl)
	jr	NZ, 00200$
;personagem.c:273: set_sprite_tile(score->spriteIds[8],score->spriteTiles[7]);
;c
	pop	de
	push	de
	ld	hl, #0x0012
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00524$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00524$
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
;personagem.c:273: set_sprite_tile(score->spriteIds[8],score->spriteTiles[7]);
	jp	00251$
00200$:
;personagem.c:274: }else if(third==5){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	or	a, (hl)
	jr	NZ, 00197$
;personagem.c:275: set_sprite_tile(score->spriteIds[8],score->spriteTiles[6]);
;c
	pop	de
	push	de
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00527$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00527$
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
;personagem.c:275: set_sprite_tile(score->spriteIds[8],score->spriteTiles[6]);
	jp	00251$
00197$:
;personagem.c:276: }else if(third==4){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	NZ, 00194$
;personagem.c:277: set_sprite_tile(score->spriteIds[8],score->spriteTiles[5]);
;c
	pop	de
	push	de
	ld	hl, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00530$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00530$
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
;personagem.c:277: set_sprite_tile(score->spriteIds[8],score->spriteTiles[5]);
	jp	00251$
00194$:
;personagem.c:278: }else if(third==3){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x03
	inc	hl
	or	a, (hl)
	jr	NZ, 00191$
;personagem.c:279: set_sprite_tile(score->spriteIds[8],score->spriteTiles[4]);
;c
	pop	de
	push	de
	ld	hl, #0x000f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00533$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00533$
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
;personagem.c:279: set_sprite_tile(score->spriteIds[8],score->spriteTiles[4]);
	jp	00251$
00191$:
;personagem.c:280: }else if(third==2){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	or	a, (hl)
	jr	NZ, 00188$
;personagem.c:281: set_sprite_tile(score->spriteIds[8],score->spriteTiles[3]);
;c
	pop	de
	push	de
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00536$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00536$
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
;personagem.c:281: set_sprite_tile(score->spriteIds[8],score->spriteTiles[3]);
	jp	00251$
00188$:
;personagem.c:282: }else if(third==1){
	ldhl	sp,	#6
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00185$
;personagem.c:283: set_sprite_tile(score->spriteIds[8],score->spriteTiles[2]);
;c
	pop	de
	push	de
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00539$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00539$
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
;personagem.c:283: set_sprite_tile(score->spriteIds[8],score->spriteTiles[2]);
	jr	00251$
00185$:
;personagem.c:285: set_sprite_tile(score->spriteIds[8],score->spriteTiles[0]);
;c
	pop	de
	push	de
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#9
	ld	(hl), c
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	a, #0x02
00540$:
	ldhl	sp,	#9
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00540$
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
;personagem.c:285: set_sprite_tile(score->spriteIds[8],score->spriteTiles[0]);
00251$:
;personagem.c:291: }
	add	sp, #13
	ret
;movimentacao.c:8: void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter
; ---------------------------------
_setPositionGameCharacter::
	add	sp, #-3
;movimentacao.c:9: move_sprite(character->spriteIds[0], x, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:10: move_sprite(character->spriteIds[1], x + spritesize, y);
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#2
	ld	(hl), a
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:11: move_sprite(character->spriteIds[2], x, y + spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, (hl)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:12: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;movimentacao.c:12: move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
;movimentacao.c:13: }
	add	sp, #3
	ret
;movimentacao.c:15: void setPositionGameCharacter2(struct subBoss* character, UINT8 x, UINT8 y){ //define uma posição no mapa
;	---------------------------------
; Function setPositionGameCharacter2
; ---------------------------------
_setPositionGameCharacter2::
	add	sp, #-5
;movimentacao.c:16: move_sprite(character->spriteIds[0], x, y);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:17: move_sprite(character->spriteIds[1], x + spritesize, y);
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:18: move_sprite(character->spriteIds[2], x + 2*spritesize, y);
	ld	a, (#_spritesize)
	add	a, a
	push	af
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(hl), a
	pop	af
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:20: move_sprite(character->spriteIds[3], x, y + spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, (hl)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:21: move_sprite(character->spriteIds[4], x + spritesize, y + spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:22: move_sprite(character->spriteIds[5], x + 2*spritesize, y + spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:24: move_sprite(character->spriteIds[6], x, y + 2*spritesize);
	ld	a, (#_spritesize)
	add	a, a
	push	af
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#6
	ld	(hl), a
	pop	af
	add	a, (hl)
	dec	hl
	ld	(hl), a
	ld	hl, #0x0006
	add	hl, de
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, (hl)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:25: move_sprite(character->spriteIds[7], x + spritesize, y + 2*spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;movimentacao.c:26: move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
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
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;movimentacao.c:26: move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
;movimentacao.c:27: }
	add	sp, #5
	ret
;movimentacao.c:29: void moveOutMinnion(struct personagem* enemy){
;	---------------------------------
; Function moveOutMinnion
; ---------------------------------
_moveOutMinnion::
;movimentacao.c:30: enemy->ativo=0;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x00
;movimentacao.c:31: setPositionGameCharacter(enemy,160, 0);
	xor	a, a
	ld	h, a
	ld	l, #0xa0
	push	hl
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
;movimentacao.c:32: }
	ret
;movimentacao.c:34: void moveOutBullet(struct bala* bullet){
;	---------------------------------
; Function moveOutBullet
; ---------------------------------
_moveOutBullet::
;movimentacao.c:35: bullet->ativo=0;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
;movimentacao.c:36: move_sprite(bullet->spriteIds,150,0);
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ld	e, a
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
	xor	a, a
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, bc
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, #0x00
	ld	(hl+), a
	ld	(hl), #0x96
;movimentacao.c:36: move_sprite(bullet->spriteIds,150,0);
;movimentacao.c:37: }
	ret
;movimentacao.c:38: void moveOutBulletEnemy(struct balaEnemy* bullet){
;	---------------------------------
; Function moveOutBulletEnemy
; ---------------------------------
_moveOutBulletEnemy::
;movimentacao.c:39: bullet->ativo=0;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
;movimentacao.c:40: move_sprite(bullet->spriteIds,170,0);
	ld	hl, #0x0004
	add	hl, de
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
	xor	a, a
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, bc
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0xaa
;movimentacao.c:40: move_sprite(bullet->spriteIds,170,0);
;movimentacao.c:41: }
	ret
;movimentacao.c:43: void moveBala(struct bala* bullet){
;	---------------------------------
; Function moveBala
; ---------------------------------
_moveBala::
	add	sp, #-3
;movimentacao.c:44: if(bullet->ativo==1){
	ldhl	sp,#5
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (de)
	dec	a
	jr	NZ, 00107$
;movimentacao.c:45: if(bullet->y+bullet->height-5>=-10){
	ld	l, c
	ld	h, b
	inc	hl
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl), a
	ld	a, (hl)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl)
	ld	h, #0x00
	ld	l, a
	add	hl, de
	ld	a, l
	add	a, #0xfb
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	a, l
	sub	a, #0xf6
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00102$
;movimentacao.c:46: bullet->y=bullet->y-5;
	ldhl	sp,	#2
	ld	a, (hl)
	add	a, #0xfb
	pop	hl
	push	hl
	ld	(hl), a
;movimentacao.c:48: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	ld	d, a
	ld	a, (bc)
	ld	e, a
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	c, a
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, d
	ld	(bc), a
	inc	bc
	ld	a, e
	ld	(bc), a
;movimentacao.c:48: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	jr	00107$
00102$:
;movimentacao.c:50: moveOutBullet(bullet);
	push	bc
	call	_moveOutBullet
	add	sp, #2
00107$:
;movimentacao.c:53: }
	add	sp, #3
	ret
;movimentacao.c:54: void moveBalaEnemy(struct balaEnemy* bullet){
;	---------------------------------
; Function moveBalaEnemy
; ---------------------------------
_moveBalaEnemy::
;movimentacao.c:55: if(bullet->ativo==1){
	pop	bc
	pop	de
	push	de
	push	bc
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	dec	a
	ret	NZ
;movimentacao.c:56: bullet->y=bullet->y+4;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a, (hl)
	add	a, #0x04
	ld	(hl), a
;movimentacao.c:58: if(bullet->x>144 || bullet->x==0 || bullet->y>160){
	ld	a, (de)
	ld	c, a
	ld	a, #0x90
	sub	a, c
	jr	C, 00101$
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	b, (hl)
	ld	a, #0xa0
	sub	a, b
	jr	NC, 00102$
00101$:
;movimentacao.c:59: moveOutBulletEnemy(bullet);
	push	de
	call	_moveOutBulletEnemy
	add	sp, #2
	ret
00102$:
;movimentacao.c:61: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
	ld	hl, #0x0004
	add	hl, de
	ld	e, (hl)
;C:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;C:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;movimentacao.c:61: move_sprite(bullet->spriteIds,bullet->x,bullet->y);
;movimentacao.c:65: }
	ret
;movimentacao.c:67: void moveInimigo1(struct personagem* enemy,struct personagem* astronaut){
;	---------------------------------
; Function moveInimigo1
; ---------------------------------
_moveInimigo1::
	add	sp, #-12
;movimentacao.c:68: if(enemy->ativo==1){
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;c
	pop	de
	push	de
	ld	hl, #0x0006
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
	ld	d, (hl)
	ld	a, (de)
	dec	a
	jp	NZ,00106$
;movimentacao.c:69: if(enemy->y+enemy->height+3<=180){
;c
	pop	de
	push	de
	ld	hl, #0x0005
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
	ldhl	sp,	#11
	ld	(hl), a
	ld	c, (hl)
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
	inc	hl
	inc	hl
	inc	hl
	ld	b, l
	ld	c, h
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
;c
	pop	de
	push	de
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;movimentacao.c:69: if(enemy->y+enemy->height+3<=180){
	ld	e, c
	ld	d, #0x00
	ld	a, #0xb4
	cp	a, b
	ld	a, #0x00
	sbc	a, c
	bit	7, e
	jr	Z, 00328$
	bit	7, d
	jr	NZ, 00329$
	cp	a, a
	jr	00329$
00328$:
	bit	7, d
	jr	Z, 00329$
	scf
00329$:
	jp	C, 00102$
;movimentacao.c:70: enemy->y=enemy->y+1;
	ldhl	sp,	#11
	ld	c, (hl)
	inc	c
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,#16
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
;c
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl), a
	ld	a, c
	sub	a, #0x0a
	jr	NZ, 00108$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00110$
	ld	l, c
	ld	h, b
	inc	hl
00110$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00109$
00108$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00109$:
;movimentacao.c:73: (enemy->y==20)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl), a
	pop	af
;movimentacao.c:73: (enemy->y==20)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x14
	jr	NZ, 00111$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	inc	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	bit	7, b
	jr	Z, 00113$
	inc	bc
	dec	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00113$:
	ldhl	sp,#10
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	dec	hl
	dec	hl
	ld	a, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00112$
00111$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#9
	ld	a, (hl)
	ld	(de), a
00112$:
;movimentacao.c:74: (enemy->y==30)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:74: (enemy->y==30)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x1e
	jr	NZ, 00114$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00116$
	ld	l, c
	ld	h, b
	inc	hl
00116$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00115$
00114$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00115$:
;movimentacao.c:75: (enemy->y==40)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:75: (enemy->y==40)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x28
	jr	NZ, 00117$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00119$
	ld	l, c
	ld	h, b
	inc	hl
00119$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00118$
00117$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00118$:
;movimentacao.c:76: (enemy->y==45)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:76: (enemy->y==45)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x2d
	jr	NZ, 00120$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00122$
	ld	l, c
	ld	h, b
	inc	hl
00122$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00121$
00120$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00121$:
;movimentacao.c:77: (enemy->y==50)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:77: (enemy->y==50)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x32
	jr	NZ, 00123$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00125$
	ld	l, c
	ld	h, b
	inc	hl
00125$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00124$
00123$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00124$:
;movimentacao.c:78: (enemy->y==55)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:78: (enemy->y==55)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x37
	jr	NZ, 00126$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00128$
	ld	l, c
	ld	h, b
	inc	hl
00128$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00127$
00126$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00127$:
;movimentacao.c:79: (enemy->y==60)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:79: (enemy->y==60)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x3c
	jr	NZ, 00129$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00131$
	ld	l, c
	ld	h, b
	inc	hl
00131$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00130$
00129$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00130$:
;movimentacao.c:80: (enemy->y==65)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:80: (enemy->y==65)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x41
	jr	NZ, 00132$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00134$
	ld	l, c
	ld	h, b
	inc	hl
00134$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00133$
00132$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00133$:
;movimentacao.c:81: (enemy->y==70)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:81: (enemy->y==70)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x46
	jr	NZ, 00135$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00137$
	ld	l, c
	ld	h, b
	inc	hl
00137$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00136$
00135$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00136$:
;movimentacao.c:82: (enemy->y==75)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:82: (enemy->y==75)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x4b
	jr	NZ, 00138$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00140$
	ld	l, c
	ld	h, b
	inc	hl
00140$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00139$
00138$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00139$:
;movimentacao.c:83: (enemy->y==80)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:83: (enemy->y==80)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x50
	jr	NZ, 00141$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00143$
	ld	l, c
	ld	h, b
	inc	hl
00143$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00142$
00141$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00142$:
;movimentacao.c:84: (enemy->y==85)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:84: (enemy->y==85)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x55
	jr	NZ, 00144$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00146$
	ld	l, c
	ld	h, b
	inc	hl
00146$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00145$
00144$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00145$:
;movimentacao.c:85: (enemy->y==90)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:85: (enemy->y==90)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x5a
	jr	NZ, 00147$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00149$
	ld	l, c
	ld	h, b
	inc	hl
00149$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00148$
00147$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00148$:
;movimentacao.c:86: (enemy->y==95)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	c, a
	pop	af
;movimentacao.c:86: (enemy->y==95)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x5f
	jr	NZ, 00150$
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#10
	ld	(hl), c
	inc	hl
	ld	(hl), #0x00
	ld	e, a
	ld	d, b
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#9
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	e, (hl)
	inc	hl
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00360$
	bit	7, d
	jr	NZ, 00361$
	cp	a, a
	jr	00361$
00360$:
	bit	7, d
	jr	Z, 00361$
	scf
00361$:
	jr	NC, 00152$
;c
	ldhl	sp,#8
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
00152$:
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	sra	d
	rr	e
	ld	a, e
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00151$
00150$:
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00151$:
;movimentacao.c:87: (enemy->y==100)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;movimentacao.c:72: (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
	pop	af
;movimentacao.c:87: (enemy->y==100)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
	sub	a, #0x64
	jr	NZ, 00153$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	ldhl	sp,	#11
	ld	c, (hl)
	ld	e, #0x00
	sub	a, c
	ld	c, a
	ld	a, b
	sbc	a, e
	ld	b, a
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z, 00155$
	ld	l, c
	ld	h, b
	inc	hl
00155$:
	sra	h
	rr	l
	ld	a, l
	ldhl	sp,	#11
	ld	c, (hl)
	add	a, c
	ld	c, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00154$
00153$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
00154$:
;movimentacao.c:89: setPositionGameCharacter(enemy,enemy->x,enemy->y);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	bc
	inc	sp
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
	jr	00106$
00102$:
;movimentacao.c:91: enemy->ativo=0;
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;movimentacao.c:92: enemy->y=0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x00
;movimentacao.c:93: enemy->x=170;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0xaa
;movimentacao.c:94: setPositionGameCharacter(enemy,enemy->x,enemy->y);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	bc
	inc	sp
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_setPositionGameCharacter
	add	sp, #4
00106$:
;movimentacao.c:97: }
	add	sp, #12
	ret
;movimentacao.c:99: void moveSubBoss(struct subBoss* miniBoss){
;	---------------------------------
; Function moveSubBoss
; ---------------------------------
_moveSubBoss::
	add	sp, #-5
;movimentacao.c:100: if(miniBoss->orientacao==1){
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;c
	pop	de
	push	de
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#2
	ld	(hl), a
;movimentacao.c:101: (miniBoss->x<=142)?(miniBoss->x=miniBoss->x+1) :( miniBoss->orientacao=-1);
;c
	pop	de
	push	de
	ld	hl, #0x0009
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl), a
	ld	a, (hl+)
;movimentacao.c:100: if(miniBoss->orientacao==1){
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;movimentacao.c:101: (miniBoss->x<=142)?(miniBoss->x=miniBoss->x+1) :( miniBoss->orientacao=-1);
	ld	a, #0x8e
	ldhl	sp,	#3
	sub	a, (hl)
	jr	C, 00106$
	inc	hl
	ld	a, (hl)
	inc	a
	ld	(de), a
	jr	00103$
00106$:
	ld	a, #0xff
	ld	(bc), a
	jr	00103$
00102$:
;movimentacao.c:104: (miniBoss->x>=10)?(miniBoss->x=miniBoss->x-1) :( miniBoss->orientacao=1);
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x0a
	jr	C, 00108$
	inc	hl
	ld	a, (hl)
	dec	a
	ld	(de), a
	jr	00103$
00108$:
	ld	a, #0x01
	ld	(bc), a
00103$:
;movimentacao.c:106: setPositionGameCharacter2(miniBoss, miniBoss->x,miniBoss->y);
	push	de
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	pop	de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	b, a
	ld	a, (de)
	push	bc
	inc	sp
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_setPositionGameCharacter2
	add	sp, #4
;movimentacao.c:107: performantdelay(3);
	ld	a, #0x03
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
;movimentacao.c:109: }
	add	sp, #5
	ret
;colisoes.c:4: UINT8 checarColisaoPersonagem(struct personagem* one,struct personagem* two){
;	---------------------------------
; Function checarColisaoPersonagem
; ---------------------------------
_checarColisaoPersonagem::
	add	sp, #-16
;colisoes.c:6: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
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
;colisoes.c:7: }
	add	sp, #16
	ret
;colisoes.c:9: UINT8 checarColisaoBala(struct personagem* one,struct bala* two ){
;	---------------------------------
; Function checarColisaoBala
; ---------------------------------
_checarColisaoBala::
	add	sp, #-14
;colisoes.c:10: if(one->ativo==1 && two->ativo){
	ldhl	sp,#16
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	ld	a, (hl)
	dec	a
	jp	NZ,00102$
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#12
	ld	(hl+), a
	ld	a, e
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	a, (hl)
	or	a, a
	jp	Z, 00102$
;colisoes.c:11: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ld	hl, #0x0005
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;c
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#0
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
	jr	Z, 00167$
	bit	7, d
	jr	NZ, 00168$
	cp	a, a
	jr	00168$
00167$:
	bit	7, d
	jr	Z, 00168$
	scf
00168$:
	jp	C, 00111$
;c
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	d, #0x00
;c
	ld	e, a
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	ldhl	sp,	#10
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00169$
	bit	7, d
	jr	NZ, 00170$
	cp	a, a
	jr	00170$
00169$:
	bit	7, d
	jr	Z, 00170$
	scf
00170$:
	jr	C, 00111$
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#8
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
	ldhl	sp,	#10
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#8
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00171$
	bit	7, d
	jr	NZ, 00172$
	cp	a, a
	jr	00172$
00171$:
	bit	7, d
	jr	Z, 00172$
	scf
00172$:
	jr	C, 00111$
;c
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	d, #0x00
;c
	ld	e, a
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
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
	jr	Z, 00173$
	bit	7, d
	jr	NZ, 00174$
	cp	a, a
	jr	00174$
00173$:
	bit	7, d
	jr	Z, 00174$
	scf
00174$:
	jp	NC, 00107$
00111$:
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
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
	jp	C, 00106$
	ld	hl, #0x0008
	add	hl, bc
	ld	e, (hl)
	ld	d, #0x00
;c
	pop	hl
	push	hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#12
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
	jr	Z, 00177$
	bit	7, d
	jr	NZ, 00178$
	cp	a, a
	jr	00178$
00177$:
	bit	7, d
	jr	Z, 00178$
	scf
00178$:
	jr	C, 00106$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#12
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#10
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#12
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00179$
	bit	7, d
	jr	NZ, 00180$
	cp	a, a
	jr	00180$
00179$:
	bit	7, d
	jr	Z, 00180$
	scf
00180$:
	jr	C, 00106$
	ld	hl, #0x0009
	add	hl, bc
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
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
	jr	Z, 00181$
	bit	7, d
	jr	NZ, 00182$
	cp	a, a
	jr	00182$
00181$:
	bit	7, d
	jr	Z, 00182$
	scf
00182$:
	jr	NC, 00107$
00106$:
	ld	e, #0x00
	jr	00104$
00107$:
	ld	e, #0x01
	jr	00104$
00102$:
;colisoes.c:13: return 0;
	ld	e, #0x00
00104$:
;colisoes.c:15: }
	add	sp, #14
	ret
;colisoes.c:16: UINT8 checarColisaoBalaEnemy(struct personagem* one,struct balaEnemy* two ){
;	---------------------------------
; Function checarColisaoBalaEnemy
; ---------------------------------
_checarColisaoBalaEnemy::
	add	sp, #-15
;colisoes.c:18: if(one->ativo==1 && two->ativo==1){
	ldhl	sp,#17
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	ld	a, (hl)
	dec	a
	jp	NZ,00102$
	ldhl	sp,	#19
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	dec	a
	jp	NZ,00102$
;colisoes.c:19: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#6
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ld	hl, #0x0005
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
;c
	pop	de
	push	de
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	ldhl	sp,	#2
	ld	a, (hl+)
	sub	a, (hl)
	jp	C, 00111$
;c
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	d, #0x00
;c
	ld	e, a
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#13
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
	jr	Z, 00169$
	bit	7, d
	jr	NZ, 00170$
	cp	a, a
	jr	00170$
00169$:
	bit	7, d
	jr	Z, 00170$
	scf
00170$:
	jr	C, 00111$
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#12
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#14
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	inc	hl
	sub	a, (hl)
	jr	C, 00111$
	ld	a, (hl-)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
;c
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	d, #0x00
;c
	ld	e, a
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
	ldhl	sp,	#13
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00171$
	bit	7, d
	jr	NZ, 00172$
	cp	a, a
	jr	00172$
00171$:
	bit	7, d
	jr	Z, 00172$
	scf
00172$:
	jp	NC, 00107$
00111$:
	ldhl	sp,	#3
	ld	a, (hl-)
	sub	a, (hl)
	jp	C, 00106$
	ld	hl, #0x0008
	add	hl, bc
	ld	e, (hl)
	ld	d, #0x00
;c
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#13
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00173$
	bit	7, d
	jr	NZ, 00174$
	cp	a, a
	jr	00174$
00173$:
	bit	7, d
	jr	Z, 00174$
	scf
00174$:
	jr	C, 00106$
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
	ld	a, (hl-)
	sub	a, (hl)
	jr	C, 00106$
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x0009
	add	hl, bc
	ld	c, (hl)
	ld	b, #0x00
	ld	l, e
	ld	h, d
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl+), a
	ld	c, (hl)
	ld	b, #0x00
	dec	hl
	dec	hl
	ld	a, (hl)
	sub	a, c
	inc	hl
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
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
	jr	NC, 00107$
00106$:
	ld	e, #0x00
	jr	00104$
00107$:
	ld	e, #0x01
	jr	00104$
00102$:
;colisoes.c:21: return 0;
	ld	e, #0x00
00104$:
;colisoes.c:23: }
	add	sp, #15
	ret
;colisoes.c:25: UINT8 checarColisaoBalaSubBoss(struct subBoss* one,struct bala* two ){
;	---------------------------------
; Function checarColisaoBalaSubBoss
; ---------------------------------
_checarColisaoBalaSubBoss::
	add	sp, #-14
;colisoes.c:27: if(one->ativo==1 && two->ativo==1){
	ldhl	sp,#16
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl)
	dec	a
	jp	NZ,00102$
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#12
	ld	(hl+), a
	ld	a, e
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	a, (hl)
	dec	a
	jp	NZ,00102$
;colisoes.c:28: return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
	ld	hl, #0x0009
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ld	hl, #0x000a
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;c
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#0
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
	jr	Z, 00169$
	bit	7, d
	jr	NZ, 00170$
	cp	a, a
	jr	00170$
00169$:
	bit	7, d
	jr	Z, 00170$
	scf
00170$:
	jp	C, 00111$
;c
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	d, #0x00
;c
	ld	e, a
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	ldhl	sp,	#10
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00171$
	bit	7, d
	jr	NZ, 00172$
	cp	a, a
	jr	00172$
00171$:
	bit	7, d
	jr	Z, 00172$
	scf
00172$:
	jr	C, 00111$
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#8
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
	ldhl	sp,	#10
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#8
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00173$
	bit	7, d
	jr	NZ, 00174$
	cp	a, a
	jr	00174$
00173$:
	bit	7, d
	jr	Z, 00174$
	scf
00174$:
	jr	C, 00111$
;c
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	d, #0x00
;c
	ld	e, a
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
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
	jp	NC, 00107$
00111$:
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00177$
	bit	7, d
	jr	NZ, 00178$
	cp	a, a
	jr	00178$
00177$:
	bit	7, d
	jr	Z, 00178$
	scf
00178$:
	jp	C, 00106$
	ld	hl, #0x000e
	add	hl, bc
	ld	e, (hl)
	ld	d, #0x00
;c
	pop	hl
	push	hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#12
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
	jr	Z, 00179$
	bit	7, d
	jr	NZ, 00180$
	cp	a, a
	jr	00180$
00179$:
	bit	7, d
	jr	Z, 00180$
	scf
00180$:
	jr	C, 00106$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#12
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#10
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	ldhl	sp,	#12
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00181$
	bit	7, d
	jr	NZ, 00182$
	cp	a, a
	jr	00182$
00181$:
	bit	7, d
	jr	Z, 00182$
	scf
00182$:
	jr	C, 00106$
	ld	hl, #0x000f
	add	hl, bc
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
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
	jr	Z, 00183$
	bit	7, d
	jr	NZ, 00184$
	cp	a, a
	jr	00184$
00183$:
	bit	7, d
	jr	Z, 00184$
	scf
00184$:
	jr	NC, 00107$
00106$:
	ld	e, #0x00
	jr	00104$
00107$:
	ld	e, #0x01
	jr	00104$
00102$:
;colisoes.c:30: return 0;
	ld	e, #0x00
00104$:
;colisoes.c:32: }
	add	sp, #14
	ret
;gameplay.c:3: void ghostShot(struct personagem* enemy,UINT8 startOriginal,UINT8 startHit){
;	---------------------------------
; Function ghostShot
; ---------------------------------
_ghostShot::
	add	sp, #-4
;gameplay.c:5: for(UINT8 i=0; i<4 ; i++){
	ldhl	sp,#6
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
00106$:
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x04
	jr	NC, 00101$
;gameplay.c:6: set_sprite_tile( enemy->spriteIds[i],startHit);
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl), a
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
;gameplay.c:7: startHit++;
	inc	(hl)
;gameplay.c:5: for(UINT8 i=0; i<4 ; i++){
	inc	hl
	inc	(hl)
	jr	00106$
00101$:
;gameplay.c:9: performantdelay(5);
	push	bc
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	pop	bc
;gameplay.c:10: for(UINT8 i=0; i<4 ; i++){
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,	#8
	ld	d, (hl)
	ld	e, #0x00
00109$:
	ld	a, e
	sub	a, #0x04
	jr	NC, 00111$
;gameplay.c:11: set_sprite_tile( enemy->spriteIds[i],startOriginal);
	push	de
;b
	ld	d, #0x00
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	pop	de
	ld	c, l
	ld	b, h
	ld	a, (bc)
;C:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_shadow_OAM)
	ld	c, a
	ld	a, h
	adc	a, #>(_shadow_OAM)
	ld	b, a
	inc	bc
	inc	bc
	ld	a, d
	ld	(bc), a
;gameplay.c:12: startOriginal++;
	inc	d
;gameplay.c:10: for(UINT8 i=0; i<4 ; i++){
	inc	e
	jr	00109$
00111$:
;gameplay.c:16: }
	add	sp, #4
	ret
;gameplay.c:17: void hitMinnion(struct personagem* enemy1,struct bala* bullet,UINT8 hit){
;	---------------------------------
; Function hitMinnion
; ---------------------------------
_hitMinnion::
;gameplay.c:19: if(checarColisaoBala(enemy1,bullet)){
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_checarColisaoBala
	add	sp, #4
	ld	a, e
	or	a, a
	ret	Z
;gameplay.c:20: ghostShot(enemy1,0,35);
	ld	a, #0x23
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_ghostShot
	add	sp, #4
;gameplay.c:21: enemy1->vida=enemy1->vida - hit;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#6
	sub	a, (hl)
	ld	(bc), a
;gameplay.c:22: NR10_REG = 0x0B;
	ld	a, #0x0b
	ldh	(_NR10_REG+0),a
;gameplay.c:23: NR11_REG = 0x8A;
	ld	a, #0x8a
	ldh	(_NR11_REG+0),a
;gameplay.c:24: NR12_REG = 0x45;
	ld	a, #0x45
	ldh	(_NR12_REG+0),a
;gameplay.c:25: NR13_REG = 0xF6;
	ld	a, #0xf6
	ldh	(_NR13_REG+0),a
;gameplay.c:26: NR14_REG = 0xC4;
	ld	a, #0xc4
	ldh	(_NR14_REG+0),a
;gameplay.c:27: if(enemy1->vida<=0){
	ld	a, (bc)
	or	a, a
	jr	NZ, 00102$
;gameplay.c:28: moveOutMinnion(enemy1);
	push	de
	call	_moveOutMinnion
	add	sp, #2
00102$:
;gameplay.c:30: moveOutBullet(bullet);
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_moveOutBullet
	add	sp, #2
;gameplay.c:32: }
	ret
;gameplay.c:35: UINT8 hitPersonagem(struct personagem* protag,struct balaEnemy* bullet,UINT8 hit){
;	---------------------------------
; Function hitPersonagem
; ---------------------------------
_hitPersonagem::
;gameplay.c:37: if(checarColisaoBalaEnemy(protag,bullet)==1){
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_checarColisaoBalaEnemy
	add	sp, #4
	dec	e
	jr	NZ, 00105$
;gameplay.c:38: protag->vida=protag->vida - hit;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#6
	sub	a, (hl)
	ld	(bc), a
;gameplay.c:39: moveOutBulletEnemy(bullet);
	push	bc
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_moveOutBulletEnemy
	add	sp, #2
	pop	bc
;gameplay.c:41: if( protag->vida==0){
	ld	a, (bc)
	or	a, a
	jr	NZ, 00102$
;gameplay.c:42: NR10_REG = 0x7B;
	ld	a, #0x7b
	ldh	(_NR10_REG+0),a
;gameplay.c:43: NR11_REG = 0x8F;
	ld	a, #0x8f
	ldh	(_NR11_REG+0),a
;gameplay.c:44: NR12_REG = 0x93;
	ld	a, #0x93
	ldh	(_NR12_REG+0),a
;gameplay.c:45: NR13_REG = 0x73;
	ld	a, #0x73
	ldh	(_NR13_REG+0),a
;gameplay.c:46: NR14_REG = 0x86;
	ld	a, #0x86
	ldh	(_NR14_REG+0),a
;gameplay.c:47: return 1;
	ld	e, #0x01
	ret
00102$:
;gameplay.c:49: return 0;
	ld	e, #0x00
	ret
00105$:
;gameplay.c:52: return 0;
	ld	e, #0x00
;gameplay.c:53: }
	ret
;gameplay.c:55: UINT8 hitSubBoss(struct subBoss* miniBoss,struct bala* bullet,UINT8 hit,struct scorePoint* score){
;	---------------------------------
; Function hitSubBoss
; ---------------------------------
_hitSubBoss::
;gameplay.c:57: if(checarColisaoBalaSubBoss(miniBoss,bullet)){
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_checarColisaoBalaSubBoss
	add	sp, #4
	ld	a, e
	or	a, a
	jr	Z, 00105$
;gameplay.c:59: miniBoss->vida=miniBoss->vida - hit;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#6
	sub	a, (hl)
	ld	(bc), a
;gameplay.c:61: moveOutBullet(bullet);
	push	bc
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_moveOutBullet
	add	sp, #2
	pop	bc
;gameplay.c:63: if( miniBoss->vida<=0){
	ld	a, (bc)
	or	a, a
	jr	NZ, 00102$
;gameplay.c:64: sumScore(score,100);
	ld	hl, #0x0064
	push	hl
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_sumScore
	add	sp, #4
;gameplay.c:65: return 1;
	ld	e, #0x01
	ret
00102$:
;gameplay.c:67: sumScore(score,15);
	ld	hl, #0x000f
	push	hl
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_sumScore
	add	sp, #4
;gameplay.c:68: return 0;
	ld	e, #0x00
	ret
00105$:
;gameplay.c:71: return 0;
	ld	e, #0x00
;gameplay.c:73: }
	ret
;gameplay.c:74: void somTiro(){
;	---------------------------------
; Function somTiro
; ---------------------------------
_somTiro::
;gameplay.c:75: NR10_REG = 0x2C;
	ld	a, #0x2c
	ldh	(_NR10_REG+0),a
;gameplay.c:76: NR11_REG = 0x81;
	ld	a, #0x81
	ldh	(_NR11_REG+0),a
;gameplay.c:77: NR12_REG = 0x92;
	ld	a, #0x92
	ldh	(_NR12_REG+0),a
;gameplay.c:78: NR13_REG = 0x2A;
	ld	a, #0x2a
	ldh	(_NR13_REG+0),a
;gameplay.c:79: NR14_REG = 0x84; 
	ld	a, #0x84
	ldh	(_NR14_REG+0),a
;gameplay.c:80: }
	ret
;game.c:30: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-128
	add	sp, #-128
	add	sp, #-94
;game.c:32: BGP_REG  = 0b11100100;
	ld	a, #0xe4
	ldh	(_BGP_REG+0),a
;game.c:33: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG+0),a
;game.c:34: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG+0),a
;game.c:35: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG+0),a
;game.c:41: set_bkg_data(0, 1, pattern1);
	ld	hl, #_pattern1
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;game.c:42: set_bkg_data(0x20, 1, pattern2);
	ld	hl, #_pattern2
	push	hl
	ld	de, #0x0120
	push	de
	call	_set_bkg_data
	add	sp, #4
;game.c:45: set_bkg_data(0, 35, desertoTiles);
	ld	hl, #_desertoTiles
	push	hl
	ld	a, #0x23
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;game.c:46: set_bkg_tiles(0, 0, 20, 36, desertoMato);
	ld	hl, #_desertoMato
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
;game.c:49: set_sprite_data(0, 4, ghost);
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
;game.c:50: set_sprite_data(4, 4, protagonista);
	ld	hl, #_protagonista
	push	hl
	ld	de, #0x0404
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:51: set_sprite_data(8, 9, MiniBossOgro);
	ld	hl, #_MiniBossOgro
	push	hl
	ld	de, #0x0908
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:52: set_sprite_data(17, 1, projetil);
	ld	hl, #_projetil
	push	hl
	ld	de, #0x0111
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:53: set_sprite_data(18,16, score);
	ld	hl, #_score
	push	hl
	ld	de, #0x1012
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:54: set_sprite_data(34,1, projetilMiniboss);
	ld	hl, #_projetilMiniboss
	push	hl
	ld	de, #0x0122
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:55: set_sprite_data(35,4, ghostHit);
	ld	hl, #_ghostHit
	push	hl
	ld	de, #0x0423
	push	de
	call	_set_sprite_data
	add	sp, #4
;game.c:61: setupEnemy(&inimigo1,0,4,minnionLife);
	ldhl	sp,	#0
	ld	a, l
	ld	d, h
	ld	hl, #175
	add	hl, sp
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x9604
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_setupEnemy
	add	sp, #5
;game.c:65: setupHero(&protagonista,4,8);
	ldhl	sp,	#10
	ld	a, l
	ld	d, h
	ld	hl, #177
	add	hl, sp
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
;game.c:66: setPositionGameCharacter(&protagonista,80,128);
	ld	hl, #178
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x8050
	push	de
	push	bc
	call	_setPositionGameCharacter
	add	sp, #4
;game.c:69: setupSubBoss(&miniboss1,8,17);
	ldhl	sp,	#20
	ld	a, l
	ld	d, h
	ld	hl, #179
	add	hl, sp
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x1108
	push	de
	push	bc
	call	_setupSubBoss
	add	sp, #4
;game.c:73: setupScore(&pontuacao,18,96,152);
	ldhl	sp,	#36
	ld	a, l
	ld	d, h
	ld	hl, #181
	add	hl, sp
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
;game.c:81: setupBala(&projetil1,17);
	ldhl	sp,	#58
	ld	a, l
	ld	d, h
	ld	hl, #183
	add	hl, sp
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
;game.c:82: setupBala(&projetil2,17);
	ldhl	sp,	#64
	ld	a, l
	ld	d, h
	ld	hl, #185
	add	hl, sp
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
;game.c:83: setupBala(&projetil3,17);
	ldhl	sp,	#70
	ld	a, l
	ld	d, h
	ld	hl, #187
	add	hl, sp
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
;game.c:84: setupBala(&projetil4,17);
	ldhl	sp,	#76
	ld	a, l
	ld	d, h
	ld	hl, #189
	add	hl, sp
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
;game.c:85: setupBala(&projetil5,17);
	ldhl	sp,	#82
	ld	a, l
	ld	d, h
	ld	hl, #191
	add	hl, sp
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
;game.c:88: setupBalaEnemy(&projetil6,34);
	ldhl	sp,	#88
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	a, #0x22
	push	af
	inc	sp
	push	de
	call	_setupBalaEnemy
	add	sp, #3
	pop	bc
;game.c:93: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;game.c:94: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;game.c:96: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;game.c:98: UINT8 gameWin=0;
	xor	a, a
	ld	hl, #193
	add	hl, sp
	ld	(hl), a
;game.c:99: UINT8 gameOver=0;
	xor	a, a
	inc	hl
	ld	(hl), a
;game.c:100: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;game.c:106: }
	di
;game.c:104: hUGE_init(&Intro);
	push	bc
	ld	hl, #_Intro
	push	hl
	call	_hUGE_init
	add	sp, #2
	ld	hl, #_hUGE_dosound
	push	hl
	call	_add_VBL
	add	sp, #2
	pop	bc
	ei
;game.c:107: while(gameOver==0 && gameWin==0){
	ld	hl, #183
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #195
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #185
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #197
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #187
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #199
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #189
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #201
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #191
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #203
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #205
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #207
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #181
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #209
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #211
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #213
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #183
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #215
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #217
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #185
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #219
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #221
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #187
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #223
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #225
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #189
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #227
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #229
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #191
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #231
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #175
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #233
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
;c
	ld	hl, #178
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #237
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #236
	add	hl, sp
	ld	(hl), a
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #237
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #239
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #241
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #243
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #245
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #247
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #249
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #251
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #253
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #255
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #257
	add	hl, sp
	ld	(hl+), a
	ld	a, e
	ld	(hl+), a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #261
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #263
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #183
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #265
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #185
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #267
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #187
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #269
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #189
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #271
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #191
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #273
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #0x0003
	add	hl, bc
	push	hl
	ld	a, l
	ld	hl, #277
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #276
	add	hl, sp
	ld	(hl), a
	ld	hl, #181
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #277
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #189
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #279
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #281
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #181
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #283
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #187
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #285
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #287
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #181
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #289
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #185
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #291
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #293
	add	hl, sp
	ld	(hl+), a
	ld	a, e
	ld	(hl+), a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #297
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #181
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #299
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #183
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #301
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #303
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #181
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #305
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #191
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #307
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #309
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #311
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #313
	add	hl, sp
	ld	(hl+), a
	ld	a, e
	ld	(hl+), a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #317
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #319
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #321
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #177
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #323
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #325
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #327
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #329
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #331
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #333
	add	hl, sp
	ld	(hl+), a
	ld	a, e
	ld	(hl+), a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #179
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #337
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
00174$:
	ld	hl, #194
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jp	NZ, 00176$
	dec	hl
	ld	a, (hl)
	or	a, a
	jp	NZ, 00176$
;game.c:110: inimigo1.ativo=1;
;c
	ld	hl, #176
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #341
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #340
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
;game.c:111: inimigo1.x=protagonista.x;
;c
	ld	hl, #176
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #343
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #342
	add	hl, sp
	ld	(hl), a
;c
	ld	hl, #178
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #345
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #344
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	hl, #341
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:112: inimigo1.y=0;
;c
	ld	hl, #176
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #347
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #346
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;game.c:114: while(qtdeMinnions!=0 && gameOver!=1){
	ld	hl, #349
	add	hl, sp
	ld	(hl), #0x0a
00130$:
	ld	hl, #194
	add	hl, sp
	ld	a, (hl)
	dec	a
	ld	a, #0x01
	jr	Z, 00440$
	xor	a, a
00440$:
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	a, (hl)
	or	a, a
	jp	Z, 00132$
	dec	hl
	bit	0, (hl)
	jp	NZ, 00132$
;C:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	inc	a
	ldh	(_SCY_REG+0),a
;game.c:116: moveBala(&projetil1);moveBala(&projetil2); moveBala(&projetil3);moveBala(&projetil4); moveBala(&projetil5);
	ld	hl, #196
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #198
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #200
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #202
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #204
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:117: if(checarColisaoPersonagem(&protagonista,&inimigo1)){
	ld	hl, #206
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	de
	push	bc
	call	_checarColisaoPersonagem
	add	sp, #4
	ld	a, e
	or	a, a
	jr	Z, 00102$
;game.c:128: gameOver=1;
	ld	hl, #194
	add	hl, sp
	ld	(hl), #0x01
00102$:
;game.c:131: moveInimigo1(&inimigo1,&protagonista);
	ld	hl, #212
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	de
	push	bc
	call	_moveInimigo1
	add	sp, #4
;game.c:133: hitMinnion(&inimigo1,&projetil1,50); hitMinnion(&inimigo1,&projetil2,50); hitMinnion(&inimigo1,&projetil3,50);
	ld	hl, #216
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitMinnion
	add	sp, #5
	ld	hl, #220
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitMinnion
	add	sp, #5
	ld	hl, #224
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitMinnion
	add	sp, #5
;game.c:134: hitMinnion(&inimigo1,&projetil4,50);   hitMinnion(&inimigo1,&projetil5,50);
	ld	hl, #228
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitMinnion
	add	sp, #5
	ld	hl, #232
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitMinnion
	add	sp, #5
;game.c:135: if(inimigo1.ativo==0){
	ld	hl, #340
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00104$
;game.c:136: sumScore(&pontuacao,10);
	ld	hl, #210
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000a
	push	hl
	push	bc
	call	_sumScore
	add	sp, #4
;game.c:137: qtdeMinnions--;
	ld	hl, #349
	add	hl, sp
	dec	(hl)
;game.c:138: inimigo1.ativo=1;
	ld	hl, #339
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
;game.c:139: inimigo1.vida=minnionLife;
;c
	ld	hl, #176
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x96
;game.c:140: inimigo1.x=protagonista.x;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	hl, #341
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:141: inimigo1.y=0;
	ld	hl, #345
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
00104$:
;game.c:144: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, e
	jr	Z, 00106$
;game.c:145: (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #348
	add	hl, sp
	ld	(hl), a
	ld	a, (hl)
	ld	b, #0x00
	add	a, #0xf6
	ld	c, a
	ld	a, b
	adc	a, #0xff
	bit	7,a
	jr	Z, 00185$
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #348
	add	hl, sp
	ld	a, (hl)
	ld	(de), a
	jr	00186$
00185$:
	ld	hl, #348
	add	hl, sp
	ld	c, (hl)
	dec	c
	dec	c
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00186$:
;game.c:147: setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
	ld	hl, #236
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #238
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00106$:
;game.c:150: if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00108$
;game.c:151: (protagonista.x+8) >= 160 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x+2);
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	h, #0x00
	ld	l, a
	ld	de, #0x0008
	add	hl, de
	ld	a, l
	sub	a, #0xa0
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00187$
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00188$
00187$:
	inc	c
	inc	c
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00188$:
;game.c:152: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ld	hl, #240
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #242
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00108$:
;game.c:154: if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00110$
;game.c:155: (protagonista.y-16) <= 20 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y-2);
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #347
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #236
	add	hl, sp
	dec	hl
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
	jr	Z, 00444$
	bit	7, d
	jr	NZ, 00445$
	cp	a, a
	jr	00445$
00444$:
	bit	7, d
	jr	Z, 00445$
	scf
00445$:
	jr	C, 00189$
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00190$
00189$:
	dec	c
	dec	c
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00190$:
;game.c:156: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ld	hl, #348
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #244
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00110$:
;game.c:158: if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00112$
;game.c:159: (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
	ld	hl, #236
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	ld	b, a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	cp	a, #0x80
	jr	C, 00191$
	dec	hl
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	jr	00192$
00191$:
	add	a, #0x02
	ld	hl, #235
	add	hl, sp
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
00192$:
;game.c:160: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ld	a, (bc)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #246
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00112$:
;game.c:162: if(joypad() & J_A){
	call	_joypad
	bit	4, e
	jp	Z,00128$
;game.c:164: if( projetil1.ativo==0){
;c
	ld	hl, #184
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #349
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #348
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00125$
;game.c:165: somTiro();
	call	_somTiro
;game.c:166: projetil1.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #183
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:167: projetil1.y=protagonista.y-2;
	ld	hl, #184
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #256
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:168: projetil1.ativo=1;
	ld	hl, #347
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00128$
00125$:
;game.c:169: }else if(projetil2.ativo==0){
;c
	ld	hl, #186
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #349
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #348
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00122$
;game.c:170: somTiro();
	call	_somTiro
;game.c:171: projetil2.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #185
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:172: projetil2.y=protagonista.y-2;
	ld	hl, #186
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #254
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:173: projetil2.ativo=1;
	ld	hl, #347
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00128$
00122$:
;game.c:174: }else if(projetil3.ativo==0){
;c
	ld	hl, #188
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #349
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #348
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00119$
;game.c:175: somTiro();
	call	_somTiro
;game.c:176: projetil3.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #187
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:177: projetil3.y=protagonista.y-2;
	ld	hl, #188
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #252
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:178: projetil3.ativo=1;
	ld	hl, #347
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00128$
00119$:
;game.c:179: }else if(projetil4.ativo==0){
;c
	ld	hl, #190
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #349
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #348
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00116$
;game.c:180: somTiro();
	call	_somTiro
;game.c:181: projetil4.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #189
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:182: projetil4.y=protagonista.y-2;
	ld	hl, #190
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #250
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:183: projetil4.ativo=1;
	ld	hl, #347
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jr	00128$
00116$:
;game.c:184: }else if(projetil5.ativo==0){
;c
	ld	hl, #192
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #349
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #348
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00128$
;game.c:185: somTiro();
	call	_somTiro
;game.c:186: projetil5.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #191
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:187: projetil5.y=protagonista.y-2;
	ld	hl, #192
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #248
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:188: projetil5.ativo=1;
	ld	hl, #347
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
00128$:
;game.c:193: performantdelay(5);  
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00130$
00132$:
;game.c:196: if(gameOver!=1){
	ld	hl, #348
	add	hl, sp
	bit	0, (hl)
	jr	NZ, 00134$
;game.c:197: miniboss1.ativo=1;
;c
	ld	hl, #180
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x01
;game.c:198: miniboss1.x=protagonista.x;
;c
	ld	hl, #180
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
	inc	hl
	ld	(hl), a
	ld	a, (hl)
	ld	(bc), a
;game.c:199: miniboss1.y=20;
;c
	ld	hl, #180
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x14
;game.c:200: setPositionGameCharacter2(&miniboss1, miniboss1.x,miniboss1.y);  
	ld	hl, #349
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	dec	hl
	ld	(hl), a
	ld	hl, #257
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	a, e
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	push	af
	inc	sp
	dec	hl
	ld	a, (hl)
	push	af
	inc	sp
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_setPositionGameCharacter2
	add	sp, #4
00134$:
;game.c:203: performantdelay(100);
	ld	a, #0x64
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
;game.c:205: while(gameOver==0 && gameWin==0){
00170$:
	ld	hl, #194
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jp	NZ, 00174$
	dec	hl
	ld	a, (hl)
	or	a, a
	jp	NZ, 00174$
;C:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	inc	a
	ldh	(_SCY_REG+0),a
;game.c:207: moveSubBoss(&miniboss1);
	ld	hl, #264
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveSubBoss
	add	sp, #2
;game.c:208: moveBala(&projetil1);moveBala(&projetil2); moveBala(&projetil3);moveBala(&projetil4); moveBala(&projetil5);
	ld	hl, #266
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #268
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #270
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #272
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
	ld	hl, #274
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBala
	add	sp, #2
;game.c:210: if(projetil6.ativo==0){
	ld	hl, #276
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00136$
;game.c:211: setPositionBullet(&miniboss1,&projetil6); 
	ld	hl, #260
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	de
	push	bc
	call	_setPositionBullet
	add	sp, #4
00136$:
;game.c:213: gameOver=hitPersonagem(&protagonista,&projetil6,50);
	ld	hl, #296
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitPersonagem
	add	sp, #5
	ld	hl, #194
	add	hl, sp
	ld	(hl), e
;game.c:215: if(hitSubBoss(&miniboss1,&projetil1,50,&pontuacao)==1 || hitSubBoss(&miniboss1,&projetil2,50,&pontuacao)==1  || hitSubBoss(&miniboss1,&projetil3,50,&pontuacao)==1  || hitSubBoss(&miniboss1,&projetil4,50,&pontuacao)==1  || hitSubBoss(&miniboss1,&projetil5,50,&pontuacao)==1 ){
	ld	hl, #299
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #302
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitSubBoss
	add	sp, #7
	dec	e
	jp	Z,00137$
	ld	hl, #289
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #292
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitSubBoss
	add	sp, #7
	dec	e
	jp	Z,00137$
	ld	hl, #283
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #286
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitSubBoss
	add	sp, #7
	dec	e
	jr	Z, 00137$
	ld	hl, #277
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #280
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitSubBoss
	add	sp, #7
	dec	e
	jr	Z, 00137$
	ld	hl, #305
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #308
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x32
	push	af
	inc	sp
	push	de
	push	bc
	call	_hitSubBoss
	add	sp, #7
	dec	e
	jr	NZ, 00138$
00137$:
;game.c:216: gameWin=1;
	ld	hl, #193
	add	hl, sp
	ld	(hl), #0x01
00138$:
;game.c:222: moveBalaEnemy(&projetil6);
	ld	hl, #316
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_moveBalaEnemy
	add	sp, #2
;game.c:223: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, e
	jr	Z, 00144$
;game.c:224: (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	e, #0x00
	add	a, #0xf6
	ld	a, e
	adc	a, #0xff
	bit	7,a
	jr	Z, 00193$
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00194$
00193$:
	dec	c
	dec	c
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00194$:
;game.c:226: setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
	ld	hl, #312
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #314
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00144$:
;game.c:228: if(joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00146$
;game.c:229: (protagonista.x+8) >= 160 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x+2);
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	h, #0x00
	ld	l, a
	ld	de, #0x0008
	add	hl, de
	ld	a, l
	sub	a, #0xa0
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00195$
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00196$
00195$:
	inc	c
	inc	c
	ld	hl, #343
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00196$:
;game.c:230: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ld	hl, #318
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #320
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00146$:
;game.c:232: if(joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00148$
;game.c:233: (protagonista.y-16) <= 20 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y-2);
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #236
	add	hl, sp
	dec	hl
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
	jr	Z, 00457$
	bit	7, d
	jr	NZ, 00458$
	cp	a, a
	jr	00458$
00457$:
	bit	7, d
	jr	Z, 00458$
	scf
00458$:
	jr	C, 00197$
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00198$
00197$:
	dec	c
	dec	c
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00198$:
;game.c:234: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ld	hl, #349
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #322
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00148$:
;game.c:236: if(joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00150$
;game.c:237: (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #348
	add	hl, sp
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #236
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	sub	a, #0x80
	jr	C, 00199$
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00200$
00199$:
	inc	c
	inc	c
	ld	hl, #235
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
00200$:
;game.c:238: setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
	ld	hl, #349
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #324
	add	hl, sp
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	push	de
	call	_setPositionGameCharacter
	add	sp, #4
00150$:
;game.c:240: if(joypad() & J_A){   
	call	_joypad
	bit	4, e
	jp	Z,00166$
;game.c:241: if( projetil1.ativo==0){
;c
	ld	hl, #184
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00163$
;game.c:242: somTiro();
	call	_somTiro
;game.c:243: projetil1.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #183
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:244: projetil1.y=protagonista.y-2;
	ld	hl, #184
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #334
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:245: projetil1.ativo=1;
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00166$
00163$:
;game.c:246: }else if(projetil2.ativo==0){
;c
	ld	hl, #186
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00160$
;game.c:247: somTiro();
	call	_somTiro
;game.c:248: projetil2.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #185
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:249: projetil2.y=protagonista.y-2;
	ld	hl, #186
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #332
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:250: projetil2.ativo=1;
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00166$
00160$:
;game.c:251: }else if(projetil3.ativo==0){
;c
	ld	hl, #188
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00157$
;game.c:252: somTiro();
	call	_somTiro
;game.c:253: projetil3.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #187
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:254: projetil3.y=protagonista.y-2;
	ld	hl, #188
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #330
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:255: projetil3.ativo=1;
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jp	00166$
00157$:
;game.c:256: }else if(projetil4.ativo==0){
;c
	ld	hl, #190
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00154$
;game.c:257: somTiro();
	call	_somTiro
;game.c:258: projetil4.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #189
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:259: projetil4.y=protagonista.y-2;
	ld	hl, #190
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #328
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:260: projetil4.ativo=1;
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jr	00166$
00154$:
;game.c:261: }else if(projetil5.ativo==0){
;c
	ld	hl, #192
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00166$
;game.c:262: somTiro();
	call	_somTiro
;game.c:263: projetil5.x=protagonista.x+4;
	ld	hl, #344
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, #0x04
	ld	c, a
	ld	hl, #191
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;game.c:264: projetil5.y=protagonista.y-2;
	ld	hl, #192
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #326
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	dec	a
	ld	(bc), a
;game.c:265: projetil5.ativo=1;
	ld	hl, #348
	add	hl, sp
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
00166$:
;game.c:269: if(joypad() & J_B){
	call	_joypad
	bit	5, e
	jr	Z, 00168$
;game.c:270: setPositionBullet(&miniboss1,&projetil6); 
	ld	hl, #336
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	de
	push	bc
	call	_setPositionBullet
	add	sp, #4
00168$:
;game.c:274: performantdelay(2);  
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00170$
00176$:
;C:/gbdk/include/gb/gb.h:761: SCX_REG=x, SCY_REG=y;
	ld	a, #0x00
	ldh	(_SCX_REG+0),a
	ld	a, #0x00
	ldh	(_SCY_REG+0),a
;game.c:279: HIDE_SPRITES;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xfd
	ldh	(_LCDC_REG+0),a
;game.c:282: hUGE_mute_channel(HT_CH1, 1);
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_hUGE_mute_channel
	add	sp, #2
;game.c:283: hUGE_mute_channel(HT_CH2, 1);
	ld	de, #0x0101
	push	de
	call	_hUGE_mute_channel
	add	sp, #2
;game.c:284: hUGE_mute_channel(HT_CH3, 1);
	ld	de, #0x0102
	push	de
	call	_hUGE_mute_channel
	add	sp, #2
;game.c:285: hUGE_mute_channel(HT_CH4, 1);
	ld	de, #0x0103
	push	de
	call	_hUGE_mute_channel
	add	sp, #2
;game.c:286: NR10_REG = 0x7B;
	ld	a, #0x7b
	ldh	(_NR10_REG+0),a
;game.c:287: NR11_REG = 0x8F;
	ld	a, #0x8f
	ldh	(_NR11_REG+0),a
;game.c:288: NR12_REG = 0x93;
	ld	a, #0x93
	ldh	(_NR12_REG+0),a
;game.c:289: NR13_REG = 0x73;
	ld	a, #0x73
	ldh	(_NR13_REG+0),a
;game.c:290: NR14_REG = 0x86;
	ld	a, #0x86
	ldh	(_NR14_REG+0),a
;game.c:296: printf("     SCORE: %d",pontuacao.valor);
;c
	ld	hl, #182
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	push	hl
	ld	a, l
	ld	hl, #350
	add	hl, sp
	ld	(hl), a
	pop	hl
	ld	a, h
	ld	hl, #349
	add	hl, sp
	ld	(hl), a
;game.c:292: if(gameOver==1){
	ld	hl, #194
	add	hl, sp
	ld	a, (hl)
	dec	a
	jr	NZ, 00178$
;game.c:293: sprintf(str,"\n  \n  \n \n \n");
	ldhl	sp,	#95
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
	pop	bc
;game.c:294: puts(str);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_puts
	add	sp, #2
	pop	bc
;game.c:296: printf("     SCORE: %d",pontuacao.valor);
	ld	hl, #349
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	push	bc
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_1
	push	hl
	call	_printf
	add	sp, #4
	pop	bc
;game.c:297: sprintf(str,"\n \n ");
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #___str_2
	push	hl
	push	de
	call	_sprintf
	add	sp, #4
	call	_puts
	add	sp, #2
;game.c:299: printf("===== GAME OVER ====");
	ld	hl, #___str_3
	push	hl
	call	_printf
	add	sp, #2
	jr	00183$
00178$:
;game.c:303: sprintf(str,"\n  \n  \n \n \n");
	ldhl	sp,	#95
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
	pop	bc
;game.c:304: puts(str);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_puts
	add	sp, #2
	pop	bc
;game.c:306: printf("     SCORE: %d",pontuacao.valor);
	ld	hl, #349
	add	hl, sp
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	push	bc
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_1
	push	hl
	call	_printf
	add	sp, #4
	pop	bc
;game.c:307: sprintf(str,"\n \n ");
	ld	hl, #___str_2
	ld	e, c
	ld	d, b
	push	bc
	push	hl
	push	de
	call	_sprintf
	add	sp, #4
	call	_puts
	add	sp, #2
;game.c:309: printf("===== GAME WIN =====");
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #2
00183$:
;game.c:318: }
	add	sp, #127
	add	sp, #127
	add	sp, #96
	ret
_pattern1:
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
_pattern2:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
___str_0:
	.db 0x0a
	.ascii "  "
	.db 0x0a
	.ascii "  "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "     SCORE: %d"
	.db 0x00
___str_2:
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x00
___str_3:
	.ascii "===== GAME OVER ===="
	.db 0x00
___str_4:
	.ascii "===== GAME WIN ====="
	.db 0x00
;game.c:320: void performantdelay(UINT8 numloops){ // nova funcao delay
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;game.c:322: for(i = 0; i < numloops; i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;game.c:323: wait_vbl_done();
	call	_wait_vbl_done
;game.c:322: for(i = 0; i < numloops; i++){
	inc	c
;game.c:325: }
	jr	00103$
	.area _CODE
	.area _CABS (ABS)
