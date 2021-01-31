#include <gb/gb.h>
UBYTE spritesize = 8;
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