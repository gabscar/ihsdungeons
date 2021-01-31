#include <gb/gb.h>
#include <gb/font.h>


UBYTE spritesize = 8;
void performantdelay(UINT8 numloops);
void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
    move_sprite(character->spriteIds[0], x, y);
    move_sprite(character->spriteIds[1], x + spritesize, y);
    move_sprite(character->spriteIds[2], x, y + spritesize);
    move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
}

void setPositionGameCharacter2(struct subBoss* character, UINT8 x, UINT8 y){ //define uma posição no mapa
    move_sprite(character->spriteIds[0], x, y);
    move_sprite(character->spriteIds[1], x + spritesize, y);
    move_sprite(character->spriteIds[2], x + 2*spritesize, y);

    move_sprite(character->spriteIds[3], x, y + spritesize);
    move_sprite(character->spriteIds[4], x + spritesize, y + spritesize);
    move_sprite(character->spriteIds[5], x + 2*spritesize, y + spritesize);

    move_sprite(character->spriteIds[6], x, y + 2*spritesize);
    move_sprite(character->spriteIds[7], x + spritesize, y + 2*spritesize);
    move_sprite(character->spriteIds[8], x + 2*spritesize, y + 2*spritesize);
}

void moveBala(struct bala* bullet){
    if(bullet->ativo==1){
        if(bullet->y+bullet->height-5>=-10){
            bullet->y=bullet->y-5;
            //performantdelay(1);
            move_sprite(bullet->spriteIds,bullet->x,bullet->y);
        }else{
            bullet->ativo=0;
            move_sprite(bullet->spriteIds,150,0);
        }
    }
}