
#include <gb/gb.h>

//generical character structure: id, position, graphics
struct personagem {
	UBYTE spriteIds[4]; // all characters use 4 sprites
	UINT8 x;
	UINT8 y;
	UINT8 ativo;
	UINT8 vida;
	UINT8 width;
	UINT8 height;
};

struct bala{
	INT8 x;
	INT8 y;
	UINT8 ativo;
	UINT8 spriteIds;
	UINT8 width;
	UINT8 height;
};