#include<gb/gb.h>
#include <stdio.h>
#include "sorriso.c"
void main(){
    UINT8 currentSprite=0;
    set_sprite_data(0,2,sorriso);
    set_sprite_tile(0,0);
    move_sprite(0,88,78);
    SHOW_SPRITES;
    char str[80];

  

   while(1){
      
        switch (joypad()){
        case J_LEFT:
            scroll_sprite(0,-5,0);
            break;
        case J_RIGHT:
            scroll_sprite(0,5,0);
            break;
        case J_UP:
            scroll_sprite(0,0,-5);
            break;
        case J_DOWN:
            scroll_sprite(0,0,5);
            break;
        case J_SELECT:
            sprintf(str, "SELECT");
            puts(str);
            break;
        case J_START:
            sprintf(str, "START");
            puts(str);
            break;
        case J_A:
            set_sprite_tile(0,0);
            break;
        case J_B:
            set_sprite_tile(0,1);
            break;
        }
    delay(100);
   }
}