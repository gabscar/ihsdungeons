#include<gb/gb.h>
#include <stdio.h>
#include "../design/backTiles.c"
#include "../design/simpleMap.c"
#include "../design/gameSprites.c"
#include "personagens.c"

struct personagem astronauta;
UBYTE spritesize = 8;
UBYTE idFlecha = 8;
UBYTE spriteFlecha = 8;

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

void main(){
    set_bkg_data(0, 10, backTiles);
    set_bkg_tiles(0, 0, 20, 36, simpleMap);
    set_sprite_data(0, 9, gameSprites);
    setupAstronauta();
   
    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    waitpad(J_START);

    while(1){
        scroll_bkg(0,1);
        
        if(joypad() & J_LEFT){
            (astronauta.x-8-2) < 0 ? (astronauta.x=astronauta.x) : (astronauta.x=astronauta.x-2);
            // (condição) ? (caso true) : (caso false)
            
            setPositionGameCharacter(&astronauta, astronauta.x,astronauta.y);
            
        }
        if(joypad() & J_RIGHT){
            (astronauta.x+8) >= 160 ? (astronauta.x=astronauta.x) : (astronauta.x=astronauta.x+2);

            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
           
        }
        if(joypad() & J_UP){
            
            (astronauta.y-16) <= 0 ? (astronauta.y=astronauta.y) : (astronauta.y=astronauta.y-2);
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
           
        }
        if(joypad() & J_DOWN){
            //astronauta.y=astronauta.y+2;
            (astronauta.y) >= 144 ? (astronauta.y=astronauta.y) : (astronauta.y=astronauta.y+2);
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
        }
            
        
        if(joypad() & J_A){
           
        }

        performantdelay(5);
       
    }
   

    // char str[80];
    // sprintf(str,' \n \n \n \n \n \n \n === GAME  OVER === ');
    // puts(str);

    
}