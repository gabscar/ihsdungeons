#include<gb/gb.h>
#include <stdio.h>
#include "../design/protagonista.c"
#include "../design/ghost.c"
#include "../design/MiniBossOgro.c"
#include "personagem.c"
#include "movimentacao.c"

//variaveis globais
void performantdelay(UINT8 numloops);






void main(){
    //setup game
    set_sprite_data(0, 4, ghost);
    set_sprite_data(4, 4, protagonista);
    set_sprite_data(8, 9, MiniBossOgro);

    //setup personagens
    struct personagem inimigo1;
    setupEnemy(&inimigo1,0,4);
    setPositionGameCharacter(&inimigo1,100,100);

    struct personagem protagonista;
    setupHero(&protagonista,4,8);
    setPositionGameCharacter(&protagonista,80,128);

    struct subBoss miniboss1;
    setupSubBoss(&miniboss1,8,17);
    setPositionGameCharacter2(&miniboss1,40,80);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    waitpad(J_START);

    while(1){
        
        if(joypad() & J_LEFT){
            (protagonista.x-8-2) < 0 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x-2);
            // (condição) ? (caso true) : (caso false)
            
            setPositionGameCharacter(&protagonista, protagonista.x,protagonista.y);
            
        }
        if(joypad() & J_RIGHT){
            (protagonista.x+8) >= 160 ? (protagonista.x=protagonista.x) : (protagonista.x=protagonista.x+2);

            setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
           
        }
        if(joypad() & J_UP){
            
            (protagonista.y-16) <= 20 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y-2);
            setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
           
        }
        if(joypad() & J_DOWN){
            //protagonista.y=protagonista.y+2;
            (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
            setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
        }
        
        if(joypad() & J_A){
            /*
            if( projetil1.ativo==0){
                projetil1.x=protagonista.x+4;
                projetil1.y=protagonista.y-2;
                projetil1.ativo=1;
            }else if(projetil2.ativo==0){
                projetil2.x=protagonista.x+4;
                projetil2.y=protagonista.y-2;
                projetil2.ativo=1;
            }else if(projetil3.ativo==0){
                projetil3.x=protagonista.x+4;
                projetil3.y=protagonista.y-2;
                projetil3.ativo=1;
            }else if(projetil4.ativo==0){
                projetil4.x=protagonista.x+4;
                projetil4.y=protagonista.y-2;
                projetil4.ativo=1;
            }else if(projetil5.ativo==0){
                projetil5.x=protagonista.x+4;
                projetil5.y=protagonista.y-2;
                projetil5.ativo=1;
            }
            */
            
        
        }
        if(joypad() & J_SELECT){
            /*
            inimigo1.ativo=1;
            inimigo1.x=protagonista.x;
            inimigo1.y=0;
            */
        }
         if(joypad() & J_START){
            /*
            inimigo1.ativo=1;
            inimigo1.x=protagonista.x;
            inimigo1.y=0;
            */
        }

        performantdelay(5);
       
    }
    
}

void performantdelay(UINT8 numloops){ // nova funcao delay
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
}