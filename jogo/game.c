#include<gb/gb.h>
#include <stdio.h>
#include "../design/protagonista.c"
#include "../design/ghost.c"
#include "../design/ghostHit.c"
#include "../design/MiniBossOgro.c"
#include "../design/projetil.c"
#include "../design/projetilMiniboss.c"
//#include "../design/backTiles.c"
//#include "../design/simpleMap.c"
#include "../design/New_Background/desertoMato.c"
#include "../design/New_Background/desertoTiles.c"
#include "../design/score.c"
#include "personagem.c"
#include "movimentacao.c"

#include "colisoes.c"
#include "gameplay.c"
#include "hUGEDriver.h"

//variaveis globais
void performantdelay(UINT8 numloops);

extern const hUGESong_t Intro;

const unsigned char pattern1[] = {0x80,0x80,0x40,0x40,0x20,0x20,0x10,0x10,0x08,0x08,0x04,0x04,0x02,0x02,0x01,0x01};
const unsigned char pattern2[] = {0x00,0x00,0x7E,0x7E,0x40,0x40,0x54,0x54,0x48,0x48,0x54,0x54,0x40,0x40,0x00,0x00};


void main(){
    //set music on
    BGP_REG  = 0b11100100;
    NR52_REG = 0x80;
    NR51_REG = 0xFF;
    NR50_REG = 0x77;
    //setup game
    //splash

    //music
    
    set_bkg_data(0, 1, pattern1);
    set_bkg_data(0x20, 1, pattern2);
   
    //others
    set_bkg_data(0, 35, desertoTiles);
    set_bkg_tiles(0, 0, 20, 36, desertoMato);


    set_sprite_data(0, 4, ghost);
    set_sprite_data(4, 4, protagonista);
    set_sprite_data(8, 9, MiniBossOgro);
    set_sprite_data(17, 1, projetil);
    set_sprite_data(18,16, score);
    set_sprite_data(34,1, projetilMiniboss);
    set_sprite_data(35,4, ghostHit);
    
   
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

    struct balaEnemy projetil6;
    setupBalaEnemy(&projetil6,34);

    //move_sprite(projetil.spriteIds,85,110);

   
    SHOW_SPRITES;
    SHOW_BKG;

     DISPLAY_ON;

    UINT8 gameWin=0;
    UINT8 gameOver=0;
    waitpad(J_START);
     
    
     __critical {
        hUGE_init(&Intro);
        add_VBL(hUGE_dosound);
    }
    while(gameOver==0 && gameWin==0){
        
        UINT8 qtdeMinnions=10;
        inimigo1.ativo=1;
        inimigo1.x=protagonista.x;
        inimigo1.y=0;
        
        while(qtdeMinnions!=0 && gameOver!=1){
            scroll_bkg(0,1);
            moveBala(&projetil1);moveBala(&projetil2); moveBala(&projetil3);moveBala(&projetil4); moveBala(&projetil5);
            if(checarColisaoPersonagem(&protagonista,&inimigo1)){
                // hUGE_mute_channel(HT_CH1, 1);
                // hUGE_mute_channel(HT_CH2, 1);
                // hUGE_mute_channel(HT_CH3, 1);
                // hUGE_mute_channel(HT_CH4, 1);

                // NR10_REG = 0x7B;
                // NR11_REG = 0x8F;
                // NR12_REG = 0x93;
                // NR13_REG = 0x73;
                // NR14_REG = 0x86;
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
                 
                if( projetil1.ativo==0){
                    somTiro();
                    projetil1.x=protagonista.x+4;
                    projetil1.y=protagonista.y-2;
                    projetil1.ativo=1;
                }else if(projetil2.ativo==0){
                    somTiro();
                    projetil2.x=protagonista.x+4;
                    projetil2.y=protagonista.y-2;
                    projetil2.ativo=1;
                }else if(projetil3.ativo==0){
                    somTiro();
                    projetil3.x=protagonista.x+4;
                    projetil3.y=protagonista.y-2;
                    projetil3.ativo=1;
                }else if(projetil4.ativo==0){
                    somTiro();
                    projetil4.x=protagonista.x+4;
                    projetil4.y=protagonista.y-2;
                    projetil4.ativo=1;
                }else if(projetil5.ativo==0){
                    somTiro();
                    projetil5.x=protagonista.x+4;
                    projetil5.y=protagonista.y-2;
                    projetil5.ativo=1;
                }
            }

            
            performantdelay(5);  
        }//fim 1-while
        
        if(gameOver!=1){
            miniboss1.ativo=1;
            miniboss1.x=protagonista.x;
            miniboss1.y=20;
            setPositionGameCharacter2(&miniboss1, miniboss1.x,miniboss1.y);  
        }

        performantdelay(100);
        
        while(gameOver==0 && gameWin==0){
            scroll_bkg(0,1);
            moveSubBoss(&miniboss1);
            moveBala(&projetil1);moveBala(&projetil2); moveBala(&projetil3);moveBala(&projetil4); moveBala(&projetil5);

            if(projetil6.ativo==0){
                setPositionBullet(&miniboss1,&projetil6); 
            }
            gameOver=hitPersonagem(&protagonista,&projetil6,50);

            if(hitSubBoss(&miniboss1,&projetil1,50,&pontuacao)==1 || hitSubBoss(&miniboss1,&projetil2,50,&pontuacao)==1  || hitSubBoss(&miniboss1,&projetil3,50,&pontuacao)==1  || hitSubBoss(&miniboss1,&projetil4,50,&pontuacao)==1  || hitSubBoss(&miniboss1,&projetil5,50,&pontuacao)==1 ){
                gameWin=1;
            }
                
            
            
           
            moveBalaEnemy(&projetil6);
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
                    somTiro();
                    projetil1.x=protagonista.x+4;
                    projetil1.y=protagonista.y-2;
                    projetil1.ativo=1;
                }else if(projetil2.ativo==0){
                    somTiro();
                    projetil2.x=protagonista.x+4;
                    projetil2.y=protagonista.y-2;
                    projetil2.ativo=1;
                }else if(projetil3.ativo==0){
                    somTiro();
                    projetil3.x=protagonista.x+4;
                    projetil3.y=protagonista.y-2;
                    projetil3.ativo=1;
                }else if(projetil4.ativo==0){
                    somTiro();
                    projetil4.x=protagonista.x+4;
                    projetil4.y=protagonista.y-2;
                    projetil4.ativo=1;
                }else if(projetil5.ativo==0){
                    somTiro();
                    projetil5.x=protagonista.x+4;
                    projetil5.y=protagonista.y-2;
                    projetil5.ativo=1;
                }
            }
            
            if(joypad() & J_B){
               setPositionBullet(&miniboss1,&projetil6); 
            }
                
            
            performantdelay(2);  
        }
        
    }
    move_bkg(0,0);
    HIDE_SPRITES;
    char str[80];

    hUGE_mute_channel(HT_CH1, 1);
    hUGE_mute_channel(HT_CH2, 1);
    hUGE_mute_channel(HT_CH3, 1);
    hUGE_mute_channel(HT_CH4, 1);
    NR10_REG = 0x7B;
    NR11_REG = 0x8F;
    NR12_REG = 0x93;
    NR13_REG = 0x73;
    NR14_REG = 0x86;
    
    if(gameOver==1){
        sprintf(str,"\n  \n  \n \n \n");
        puts(str);
        
        printf("     SCORE: %d",pontuacao.valor);
        sprintf(str,"\n \n ");
        puts(str);
        printf("===== GAME OVER ====");
        
    }else{
       
        sprintf(str,"\n  \n  \n \n \n");
        puts(str);
        
        printf("     SCORE: %d",pontuacao.valor);
        sprintf(str,"\n \n ");
        puts(str);
        printf("===== GAME WIN =====");
    }
    
   
    
   

   

}

void performantdelay(UINT8 numloops){ // nova funcao delay
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
}