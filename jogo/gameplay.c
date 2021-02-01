#include<gb/gb.h>

void hitMinnion(struct personagem* enemy1,struct bala* bullet,UINT8 hit){

    if(checarColisaoBala(enemy1,bullet)){
        enemy1->vida=enemy1->vida - hit;

        if(enemy1->vida<=0){
            moveOutMinnion(enemy1);
        }
        moveOutBullet(bullet);
       
    }

}