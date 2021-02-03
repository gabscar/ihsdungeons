#include<gb/gb.h>

void hitMinnion(struct personagem* enemy1,struct bala* bullet,UINT8 hit){

    if(checarColisaoBala(enemy1,bullet)){
        enemy1->vida=enemy1->vida - hit;
<<<<<<< HEAD
=======
        NR10_REG = 0x0B;
        NR11_REG = 0x8A;
        NR12_REG = 0x45;
        NR13_REG = 0xF6;
        NR14_REG = 0xC4;
>>>>>>> 03656b48132e6203f97ff81f0295142114b7a33f
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
            return 1;
        }else{
            return 0;
        }
    }
    return 0;
}

UINT8 hitSubBoss(struct subBoss* miniBoss,struct bala* bullet,UINT8 hit){
    
    if(checarColisaoBalaSubBoss(miniBoss,bullet)){

        miniBoss->vida=miniBoss->vida - hit;
        
        moveOutBullet(bullet);
        
        if( miniBoss->vida<=0){
            return 1;
        }else{
            return 2;
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