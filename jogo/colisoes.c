
#include <gb/gb.h>

UINT8 checarColisaoPersonagem(struct personagem* one,struct personagem* two){
    
    return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
}

UINT8 checarColisaoBala(struct personagem* one,struct bala* two ){
    if(one->ativo==1 && two->ativo){
        return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    }
    return 0;
    
}
UINT8 checarColisaoBalaEnemy(struct personagem* one,struct balaEnemy* two ){
    
    if(one->ativo==1 && two->ativo==1){
        return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    }
    return 0;
    
}

UINT8 checarColisaoBalaSubBoss(struct subBoss* one,struct bala* two ){
   
    if(one->ativo==1 && two->ativo==1){
        return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    }
    return 0;
    
}










