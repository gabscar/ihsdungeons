
#include <gb/gb.h>

UINT8 spriteId=0;
UBYTE spritesizes = 8;
//generical character structure: id, position, graphics
struct personagem {
	UBYTE spriteIds[4]; // all characters use 4 sprites
	UINT8 x;
	UINT8 y;
	UINT8 ativo;
	UINT8 vida;
	UINT8 width;
	UINT8 height;
};

struct subBoss {
	UBYTE spriteIds[9]; 
	UINT8 x;
	UINT8 y;
    INT8 orientacao;
	UINT8 ativo;
	UINT8 vida;
	UINT8 width;
	UINT8 height;
};

struct bala{
	INT8 x;
	INT8 y;
	UINT8 ativo;
	UINT8 spriteIds;
	UINT8 width;
	UINT8 height;
};

struct balaEnemy{
	UINT8 x;
    UINT8 xEnemy;
    UINT8 y;
	UINT8 ativo;
	UINT8 spriteIds;
	UINT8 width;
	UINT8 height;
};


struct scorePoint {
	UBYTE spriteIds[9];
	UINT16 valor;
    UBYTE spriteTiles[11];
};


void setupEnemy(struct personagem *enemy,UINT8 start,UINT8 end,UINT8 vida){
    enemy->x = 0;
    enemy->y = 0;
    enemy->width = 16;
    enemy->height = 16;
    enemy->ativo = 0;
    enemy->vida = vida;
    UINT8 aux=0;
    for(UINT8 i=start; i<end ; i++){
        set_sprite_tile(spriteId, i);
        enemy->spriteIds[aux] = spriteId;
        aux++;
        spriteId++;
    }
}

void setupHero(struct personagem *hero,UINT8 start,UINT8 end){
    hero->x = 80;
    hero->y = 128;
    hero->width = 16;
    hero->height = 16;
    hero->ativo = 1;
    hero->vida = 150;
    UINT8 aux=0;
    for(UINT8 i=start; i<end ; i++){
        set_sprite_tile(spriteId, i);
        hero->spriteIds[aux] = spriteId;
        aux++;
        spriteId++;
    }
}

void setupSubBoss(struct subBoss *miniBoss,UINT8 start,UINT8 end){
    miniBoss->x = 0;
    miniBoss->y = 0;
    miniBoss->width = 24;
    miniBoss->height = 24;
    miniBoss->ativo = 1;
    miniBoss->vida = 500;
    miniBoss->orientacao = 1;
    UINT8 aux=0;
    for(UINT8 i=start; i<end ; i++){
        set_sprite_tile(spriteId, i);
        miniBoss->spriteIds[aux] = spriteId;
        aux++;
        spriteId++;
    }
}

void setupBala(struct bala* bullet,UINT8 spriteBala){
    bullet->spriteIds=spriteId;
    set_sprite_tile(spriteId, spriteBala);
    spriteId++;
    bullet->width=3;
    bullet->height=3;
    bullet->ativo=0;
}

void setupBalaEnemy(struct balaEnemy* bullet,UINT8 spriteBala){
    bullet->spriteIds=spriteId;
    set_sprite_tile(spriteId, spriteBala);
    spriteId++;
    bullet->width=3;
    bullet->height=3;
    bullet->ativo=0;
}

void setPositionBullet(struct subBoss* miniBoss,struct balaEnemy* bullet){
    bullet->ativo=1;
    bullet->x=miniBoss->x+12;
    bullet->xEnemy=miniBoss->x;
    bullet->y=miniBoss->y+22;
}



void setupScore(struct scorePoint *score, UINT8 start,UINT8 x, UINT8 y){   
        UINT8 i=0;
        
        score->valor=0;
        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        start++; spriteId++; i++;

        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        start++; spriteId++; i++;

        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        start++; spriteId++; i++;

        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        start++; spriteId++; i++;

        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        start++; spriteId++; i++;

        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        spriteId++; i++;

        UINT8 aux=start;
        for (UINT8 j = 0; j < 11; j++){
           score->spriteTiles[j]=aux;
           aux++;
        }

        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        spriteId++; i++;
       
        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        spriteId++; i++;start++;
        
        set_sprite_tile(spriteId, start);
        score->spriteIds[i] = spriteId;
        spriteId++; i++;

        move_sprite(score->spriteIds[0], x, y);
        move_sprite(score->spriteIds[1], x + spritesizes, y);
        move_sprite(score->spriteIds[2], x + 2*spritesizes, y);
        move_sprite(score->spriteIds[3], x + 3*spritesizes, y);
        move_sprite(score->spriteIds[4], x + 4*spritesizes, y);
        move_sprite(score->spriteIds[5], x + 5*spritesizes, y);
        move_sprite(score->spriteIds[6], x + 6*spritesizes, y);
        move_sprite(score->spriteIds[7], x + 7*spritesizes, y);
        move_sprite(score->spriteIds[8], x + 8*spritesizes, y);
    }
   
void sumScore(struct scorePoint *score,UINT16 value){

        score->valor= score->valor+value ;
       if(score->valor>9999){
            score->valor=0;
       }
        UINT16 zero= (score->valor)/1000;
        UINT16 first= (score->valor - zero*1000)/ 100;
        UINT16 second= ((score->valor) - zero*1000 -first*100)/10;
        UINT16 third= (score->valor) - zero*1000 - first*100 -second*10;
        
        if(zero==9){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[10]);
        }else if(zero==8){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[9]);
        }else if(zero==7){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[8]);
        }else if(zero==6){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[7]);
        }else if(zero==5){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[6]);
        }else if(zero==4){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[5]);
        }else if(zero==3){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[4]);
        }else if(zero==2){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[3]);
        }else if(zero==1){
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[2]);
        }else{
            set_sprite_tile(score->spriteIds[5],score->spriteTiles[0]);
        }


        if(first==9){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[10]);
        }else if(first==8){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[9]);
        }else if(first==7){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[8]);
        }else if(first==6){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[7]);
        }else if(first==5){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[6]);
        }else if(first==4){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[5]);
        }else if(first==3){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[4]);
        }else if(first==2){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[3]);
        }else if(first==1){
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[2]);
        }else{
            set_sprite_tile(score->spriteIds[6],score->spriteTiles[0]);
        }

        if(second==9){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[10]);
        }else if(second==8){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[9]);
        }else if(second==7){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[8]);
        }else if(second==6){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[7]);
        }else if(second==5){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[6]);
        }else if(second==4){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[5]);
        }else if(second==3){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[4]);
        }else if(second==2){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[3]);
        }else if(second==1){
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[2]);
        }else{
            set_sprite_tile(score->spriteIds[7],score->spriteTiles[0]);
        }

         if(third==9){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[10]);
        }else if(third==8){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[9]);
        }else if(third==7){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[8]);
        }else if(third==6){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[7]);
        }else if(third==5){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[6]);
        }else if(third==4){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[5]);
        }else if(third==3){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[4]);
        }else if(third==2){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[3]);
        }else if(third==1){
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[2]);
        }else{
            set_sprite_tile(score->spriteIds[8],score->spriteTiles[0]);
        }
        
        
      

    }



    