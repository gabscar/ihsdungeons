#include<gb/gb.h>

void ghostShot(struct personagem* enemy,UINT8 startOriginal,UINT8 startHit){
    
    for(UINT8 i=0; i<4 ; i++){
        set_sprite_tile( enemy->spriteIds[i],startHit);
        startHit++;
    }
    performantdelay(5);
    for(UINT8 i=0; i<4 ; i++){
        set_sprite_tile( enemy->spriteIds[i],startOriginal);
        startOriginal++;
    }


}
void hitMinnion(struct personagem* enemy1,struct bala* bullet,UINT8 hit){

    if(checarColisaoBala(enemy1,bullet)){
        ghostShot(enemy1,0,35);
        enemy1->vida=enemy1->vida - hit;
        NR10_REG = 0x0B;
        NR11_REG = 0x8A;
        NR12_REG = 0x45;
        NR13_REG = 0xF6;
        NR14_REG = 0xC4;
        if(enemy1->vida<=0){
            moveOutMinnion(enemy1);
        }
        moveOutBullet(bullet);
    }
}


UINT8 hitPersonagem(struct personagem* protag,struct balaEnemy* bullet,UINT8 hit){

    if(checarColisaoBalaEnemy(protag,bullet)==1){
        protag->vida=protag->vida - hit;
        moveOutBulletEnemy(bullet);
        
        if( protag->vida==0){
            NR10_REG = 0x7B;
            NR11_REG = 0x8F;
            NR12_REG = 0x93;
            NR13_REG = 0x73;
            NR14_REG = 0x86;
            return 1;
        }else{
            return 0;
        }
    }
    return 0;
}

UINT8 hitSubBoss(struct subBoss* miniBoss,struct bala* bullet,UINT8 hit,struct scorePoint* score){
    
    if(checarColisaoBalaSubBoss(miniBoss,bullet)){

        miniBoss->vida=miniBoss->vida - hit;
        
        moveOutBullet(bullet);
        
        if( miniBoss->vida<=0){
            sumScore(score,100);
            return 1;
        }else{
            sumScore(score,15);
            return 0;
        }
    }
    return 0;

}
void somTiro(){
    NR10_REG = 0x2C;
    NR11_REG = 0x81;
    NR12_REG = 0x92;
    NR13_REG = 0x2A;
    NR14_REG = 0x84; 
}