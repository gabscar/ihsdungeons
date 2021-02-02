#include<gb/gb.h>
#include <stdio.h>
#include "../design/protagonista.c"
#include "../design/ghost.c"
#include "../design/MiniBossOgro.c"
#include "../design/projetil.c"
#include "../design/backTiles.c"
#include "../design/simpleMap.c"
#include "../design/score.c"
#include "personagem.c"
#include "movimentacao.c"
#include "changeScore.c"
#include "colisoes.c"
#include "gameplay.c"


//variaveis globais
void performantdelay(UINT8 numloops);



void main(){
    NR52_REG = 0x80;
    NR51_REG = 0x11;
    NR50_REG = 0x77;
    //setup game
    set_bkg_data(0, 10, backTiles);
    set_bkg_tiles(0, 0, 20, 36, simpleMap);

    set_sprite_data(0, 4, ghost);
    set_sprite_data(4, 4, protagonista);
    set_sprite_data(8, 9, MiniBossOgro);
    set_sprite_data(17, 1, projetil);
    set_sprite_data(18,16, score);
    
   
    //setup personagens
    struct personagem inimigo1;
    UINT8 minnionLife=150;
    setupEnemy(&inimigo1,0,4,minnionLife);
    

    struct personagem protagonista;
    setupHero(&protagonista,4,8);
    setPositionGameCharacter(&protagonista,80,128);

    struct subBoss miniboss1;
    setupSubBoss(&miniboss1,8,17);
    //setPositionGameCharacter2(&miniboss1,40,80);

    struct scorePoint pontuacao;
    setupScore(&pontuacao,18,96,152);
    

    struct bala projetil1;
    struct bala projetil2;
    struct bala projetil3;
    struct bala projetil4;
    struct bala projetil5;
    setupBala(&projetil1,17);
    setupBala(&projetil2,17);
    setupBala(&projetil3,17);
    setupBala(&projetil4,17);
    setupBala(&projetil5,17);

    //move_sprite(projetil.spriteIds,85,110);

    SHOW_BKG;
    SHOW_SPRITES;
   
    DISPLAY_ON;


    UINT8 gameOver=0;
    waitpad(J_START);
    while(gameOver!=1){
        
        UINT8 qtdeMinnions=10;
        inimigo1.ativo=1;
        inimigo1.x=protagonista.x;
        inimigo1.y=0;
        
        while(qtdeMinnions!=0 && gameOver!=1){
            scroll_bkg(0,1);
            moveBala(&projetil1);moveBala(&projetil2); moveBala(&projetil3);moveBala(&projetil4); moveBala(&projetil5);
            if(checarColisaoPersonagem(&protagonista,&inimigo1)){
                gameOver=1;
            }
            moveInimigo1(&inimigo1,&protagonista);

            hitMinnion(&inimigo1,&projetil1,50); hitMinnion(&inimigo1,&projetil2,50); hitMinnion(&inimigo1,&projetil3,50);
            hitMinnion(&inimigo1,&projetil4,50);   hitMinnion(&inimigo1,&projetil5,50);
            if(inimigo1.ativo==0){
                sumScore(&pontuacao,10);
                qtdeMinnions--;
                inimigo1.ativo=1;
                inimigo1.vida=minnionLife;
                inimigo1.x=protagonista.x;
                inimigo1.y=0;
            }

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
                (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
                setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
            }
            if(joypad() & J_A){
                NR10_REG = 0x2C;
                NR11_REG = 0x81;
                NR12_REG = 0x92;
                NR13_REG = 0x2A;
                NR14_REG = 0x84;   
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
            }
            if(joypad() & J_B){
                
            }
            
            performantdelay(5);  
        }//fim 1-while

       
        miniboss1.ativo=1;
        miniboss1.x=protagonista.x;
        miniboss1.y=20;
        setPositionGameCharacter2(&miniboss1, miniboss1.x,miniboss1.y);
        
        while(gameOver!=1){
            scroll_bkg(0,1);
            moveSubBoss(&miniboss1);
            moveBala(&projetil1);moveBala(&projetil2); moveBala(&projetil3);moveBala(&projetil4); moveBala(&projetil5);

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
                (protagonista.y) >= 128 ? (protagonista.y=protagonista.y) : (protagonista.y=protagonista.y+2);
                setPositionGameCharacter(&protagonista,protagonista.x,protagonista.y);
            }
            if(joypad() & J_A){   
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
            }
            performantdelay(2);  
        }
        
    }

}

void performantdelay(UINT8 numloops){ // nova funcao delay
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
}