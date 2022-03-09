/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(trigger){
    switch(type){
        case 0:
			audio_play_sound(se_item00, 3, 0);
            POWER = 4.00;
            break;
        case 1:
			audio_play_sound(se_item00, 3, 0);
            if(POWER <= 3.95){
                POWER += 0.05;
                break;
            }else if(POWER < 4){
				POWER = 4;
				break;
			}
        case 2:
			audio_play_sound(se_item00, 3, 0);
            if(POWER <= 3.9){
                POWER += 0.10;
                break;    
            }else if(POWER < 4){
                POWER = 4;
                break;
            }
        case 3:
			audio_play_sound(se_item00, 3, 0);
            if(POWER <= 3.5){
                POWER += 0.5;
                break;
            }else if(POWER < 4){
                POWER = 4;
                break;
            }
        case 4:
			audio_play_sound(se_item00, 3, 0);
            if(obj_player.y <= border_item){
                SCORE += MAXPOINT;
                break;
            }else{
                SCORE += MAXPOINT * (obj_player.y - border_item)/(border_d - border_u);
                break;
            }
        case 5:
            MAXPOINT += 0.2;
            break;
        case 6:
            LIFE += 1;
            audio_play_sound(se_extend, 3, 0);
            break;
        case 7:
            LIFEPIECE += 1;
			audio_play_sound(se_bonus, 3, 0);
            break;
        case 8:
            BOMB += 1;
            audio_play_sound(se_cardget, 3, 0);
            break;
        case 9:
            BOMBPIECE += 1;
			audio_play_sound(se_bonus2, 3, 0);
            break;
    }
}