#include<gb/gb.h>
#include <stdio.h>
#include "astronautaEfoguete.c"
#include "personagens.c"

struct personagem astronauta;
struct personagem foguete;
UBYTE spritesize = 8;

void performantdelay(UINT8 numloops){ // nova funcao delay
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
}

void setPositionGameCharacter(struct personagem* character, UINT8 x, UINT8 y){ //define uma posição no mapa
    move_sprite(character->spriteIds[0], x, y);
    move_sprite(character->spriteIds[1], x + spritesize, y);
    move_sprite(character->spriteIds[2], x, y + spritesize);
    move_sprite(character->spriteIds[3], x + spritesize, y + spritesize);
}

UBYTE checkCollisions(struct personagem* one, struct personagem* two){
    return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
}
// void movimentarPersonagem(struct personagem* character, UINT8 x, UINT8 y){ //movimenta personagem no mapa
//     move_sprite(character->spriteIds[0],character->x + x, character->y + y);
//     move_sprite(character->spriteIds[1], character->x + x + spritesize,character->y + y);
//     move_sprite(character->spriteIds[2], character->x + x, character->y + y + spritesize);
//     move_sprite(character->spriteIds[3], character->x + x + spritesize, character->y +y + spritesize);
// }

void setupAstronauta(){
    astronauta.x = 80;
    astronauta.y = 130;
    astronauta.width = 16;
    astronauta.height = 16;

    // load sprites for ship
    set_sprite_tile(0, 0);
    astronauta.spriteIds[0] = 0;
    set_sprite_tile(1, 1);
    astronauta.spriteIds[1] = 1;
    set_sprite_tile(2, 2);
    astronauta.spriteIds[2] = 2;
    set_sprite_tile(3, 3);
    astronauta.spriteIds[3] = 3;

    setPositionGameCharacter(&astronauta, astronauta.x, astronauta.y);
}

void setupFoguete(){
    foguete.x = 80;
    foguete.y = 30;
    foguete.width = 16;
    foguete.height = 16;    

    // load sprites for bug
    set_sprite_tile(4, 4);
    foguete.spriteIds[0] = 4;
    set_sprite_tile(5, 5);
    foguete.spriteIds[1] = 5;
    set_sprite_tile(6, 6);
    foguete.spriteIds[2] = 6;
    set_sprite_tile(7, 7);
    foguete.spriteIds[3] = 7;

    setPositionGameCharacter(&foguete, foguete.x, foguete.y);
}

void main(){

    set_sprite_data(0, 8, sprites1);
    setupAstronauta();
    setupFoguete();

    SHOW_SPRITES;
    DISPLAY_ON;

    while(!checkCollisions(&astronauta,&foguete)){
        if(joypad() & J_LEFT){
            astronauta.x=astronauta.x-2;
            setPositionGameCharacter(&astronauta, astronauta.x,astronauta.y);
        }
        if(joypad() & J_RIGHT){
            astronauta.x=astronauta.x+2;
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
        }
        if(joypad() & J_UP){
            astronauta.y=astronauta.y-2;
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
        }
        if(joypad() & J_DOWN){
            astronauta.y=astronauta.y+2;
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
        }

        foguete.y+= 5;
        if(foguete.y >= 144){
            foguete.y=0;
            foguete.x = astronauta.x;
        }
       setPositionGameCharacter(&foguete,foguete.x,foguete.y);
        performantdelay(5);
       

    }
    char str[80];

    sprintf(str,"\n \n \n \n \n \n \n === GAME  OVER ===");
    puts(str);
}