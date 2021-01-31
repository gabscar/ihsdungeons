
#include <gb/gb.h>
UINT8 spriteId=0;
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

struct subBoss {
	UBYTE spriteIds[9]; // all characters use 4 sprites
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

void setupEnemy(struct personagem *enemy,UINT8 start,UINT8 end){
    enemy->x = 0;
    enemy->y = 0;
    enemy->width = 16;
    enemy->height = 16;
    enemy->ativo = 0;
    UINT8 aux=0;
    for(UINT8 i=start; i<end ; i++){
        set_sprite_tile(spriteId, i);
        enemy->spriteIds[aux] = spriteId;
        aux++;
        spriteId++;
    }
}

void setupHero(struct personagem *hero,UINT8 start,UINT8 end){
    hero->x = 80;
    hero->y = 128;
    hero->width = 16;
    hero->height = 16;
    hero->ativo = 0;
    UINT8 aux=0;
    for(UINT8 i=start; i<end ; i++){
        set_sprite_tile(spriteId, i);
        hero->spriteIds[aux] = spriteId;
        aux++;
        spriteId++;
    }
}

void setupSubBoss(struct subBoss *miniBoss,UINT8 start,UINT8 end){
    miniBoss->x = 0;
    miniBoss->y = 0;
    miniBoss->width = 24;
    miniBoss->height = 24;
    miniBoss->ativo = 0;
    UINT8 aux=0;
    for(UINT8 i=start; i<end ; i++){
        set_sprite_tile(spriteId, i);
        miniBoss->spriteIds[aux] = spriteId;
        aux++;
        spriteId++;
    }
}