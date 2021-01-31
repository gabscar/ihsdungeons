#include<gb/gb.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "../design/backTiles.c"
#include "../design/simpleMap.c"
#include "gameSprites.c"//teste local de sprites
#include "personagens.c"


struct personagem astronauta;


UBYTE spritesize = 8;
UBYTE idBala = 4;
UBYTE idInimigo = 9;
UBYTE spriteBala = 8;

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
    astronauta.y = 128;
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

void setupInimigo(struct personagem* enemy){
    
    enemy->x = 0;
    enemy->y = 0;
    enemy->width = 16;
    enemy->height = 16;
    enemy->ativo = 0;

    // load sprites for ship
    set_sprite_tile(idInimigo, 4);
    enemy->spriteIds[0] = idInimigo;
    idInimigo++;

    set_sprite_tile(idInimigo, 5);
    enemy->spriteIds[1] = idInimigo;
    idInimigo++;

    set_sprite_tile(idInimigo, 6);
    enemy->spriteIds[2] = idInimigo;
    idInimigo++;

    set_sprite_tile(idInimigo, 7);
    enemy->spriteIds[3] = idInimigo;
    idInimigo++;
}


void moveInimigo1(struct personagem* enemy,struct personagem* astronaut){
    if(enemy->ativo==1){
        if(enemy->y+enemy->height+3<=180){
            enemy->y=enemy->y+1;
            /*
            (enemy->y==10)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==20)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==30)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==40)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==45)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==50)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==55)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==60)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==65)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==70)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==75)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==80)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==85)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==90)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==95)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            (enemy->y==100)?(enemy->x=((astronaut->x-enemy->x)/2)+enemy->x) :( enemy->x=enemy->x);
            */
            setPositionGameCharacter(enemy,enemy->x,enemy->y);
        }else{
            enemy->ativo=0;
            enemy->y=0;
            enemy->x=160;
            setPositionGameCharacter(enemy,enemy->x,enemy->y);
        }
    }

}

UINT8 checarColisaoPersonagem(struct personagem* one,struct personagem* two){
    
    return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
}

UINT8 checarColisaoBala(struct personagem* one,struct bala* two){
    
    return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
}




void setupBala(struct bala* bullet){
    bullet->spriteIds=idBala;
    set_sprite_tile(idBala, spriteBala);
    idBala++;
    bullet->width=5;
    bullet->height=7;
    bullet->ativo=0;
}


void moveBala(struct bala* bullet){
    if(bullet->ativo==1){
        if(bullet->y+bullet->height-5>=-10){
            bullet->y=bullet->y-5;
             performantdelay(1);
            move_sprite(bullet->spriteIds,bullet->x,bullet->y);
        }else{
            bullet->ativo=0;
            move_sprite(bullet->spriteIds,150,0);
        }
    }
}

void main(){
    //SET MAPA E SPRITES
    set_bkg_data(0, 10, backTiles);
    set_bkg_tiles(0, 0, 20, 36, simpleMap);
    set_sprite_data(0, 9, gameSprites);

    
    //setup personagens
    struct bala projetil1;
    struct bala projetil2;
    struct bala projetil3;
    struct bala projetil4;
    struct bala projetil5;
    setupBala(&projetil1);
    setupBala(&projetil2);
    setupBala(&projetil3);
    setupBala(&projetil4);
    setupBala(&projetil5);

    struct personagem inimigo1;
    setupInimigo(&inimigo1);
    struct personagem inimigo2;
    setupInimigo(&inimigo2);

    setupAstronauta();
    
    UINT8 colisaoPersonagem=0;
    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;
    
    waitpad(J_START);

    while(colisaoPersonagem==0){
        scroll_bkg(0,1);
        colisaoPersonagem=checarColisaoBala(&inimigo1,&projetil1);
        moveBala(&projetil1);
        moveBala(&projetil2);
        moveBala(&projetil3);
        moveBala(&projetil4);
        moveBala(&projetil5);
        moveInimigo1(&inimigo1,&astronauta);

        
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
            
            (astronauta.y-16) <= 20 ? (astronauta.y=astronauta.y) : (astronauta.y=astronauta.y-2);
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
           
        }
        if(joypad() & J_DOWN){
            //astronauta.y=astronauta.y+2;
            (astronauta.y) >= 128 ? (astronauta.y=astronauta.y) : (astronauta.y=astronauta.y+2);
            setPositionGameCharacter(&astronauta,astronauta.x,astronauta.y);
        }
        
        if(joypad() & J_A){
            if( projetil1.ativo==0){
                projetil1.x=astronauta.x+4;
                projetil1.y=astronauta.y-2;
                projetil1.ativo=1;
            }else if(projetil2.ativo==0){
                projetil2.x=astronauta.x+4;
                projetil2.y=astronauta.y-2;
                projetil2.ativo=1;
            }else if(projetil3.ativo==0){
                projetil3.x=astronauta.x+4;
                projetil3.y=astronauta.y-2;
                projetil3.ativo=1;
            }else if(projetil4.ativo==0){
                projetil4.x=astronauta.x+4;
                projetil4.y=astronauta.y-2;
                projetil4.ativo=1;
            }else if(projetil5.ativo==0){
                projetil5.x=astronauta.x+4;
                projetil5.y=astronauta.y-2;
                projetil5.ativo=1;
            }
            
        
        }
        if(joypad() & J_SELECT){
            inimigo1.ativo=1;
            inimigo1.x=astronauta.x;
            inimigo1.y=0;
        }

        performantdelay(5);
       
    }
   

    // char str[80];
    // sprintf(str,' \n \n \n \n \n \n \n === GAME  OVER === ');
    // puts(str);

    
}