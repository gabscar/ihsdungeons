while(1){
      
        switch (joypad()){
        case J_LEFT:
            scroll_sprite(0,-5,0);
            break;
        case J_RIGHT:
            scroll_sprite(0,5,0);
            break;
        case J_UP:
            scroll_sprite(0,0,5);
            break;
        case J_DOWN:
            scroll_sprite(0,0,-5);
            break;
        case J_SELECT:
            sprintf("SELECT");
            break;
        case J_START:
            sprintf("START");
            break;
        case J_A:
            set_sprite_tile(0,0);
            break;
        case J_B:
            set_sprite_tile(0,1);
            break;
    }
    delay(100);