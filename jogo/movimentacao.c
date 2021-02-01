#include <gb/gb.h>



UBYTE spritesize = 8;
void performantdelay(UINT8 numloops);
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

void moveOutMinnion(struct personagem* enemy){
    enemy->ativo=0;
    setPositionGameCharacter(enemy,160, 0);
}

void moveOutBullet(struct bala* bullet){
    bullet->ativo=0;
    move_sprite(bullet->spriteIds,150,0);
}

void moveBala(struct bala* bullet){
    if(bullet->ativo==1){
        if(bullet->y+bullet->height-5>=-10){
            bullet->y=bullet->y-5;
            //performantdelay(1);
            move_sprite(bullet->spriteIds,bullet->x,bullet->y);
        }else{
            moveOutBullet(bullet);
        }
    }
}

void moveInimigo1(struct personagem* enemy,struct personagem* astronaut){
    if(enemy->ativo==1){
        if(enemy->y+enemy->height+3<=180){
            enemy->y=enemy->y+1;
            
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
            
            setPositionGameCharacter(enemy,enemy->x,enemy->y);
        }else{
            enemy->ativo=0;
            enemy->y=0;
            enemy->x=170;
            setPositionGameCharacter(enemy,enemy->x,enemy->y);
        }
    }

}

