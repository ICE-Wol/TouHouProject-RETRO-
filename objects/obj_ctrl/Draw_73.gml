/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//draw_roundrect(64, 32, 832, 928, 1);

/*draw_set_colour(c_black);
draw_rectangle(0,0,room_width,border_u,0);
draw_rectangle(0,0,border_l,room_width,0);
draw_rectangle(0,border_d,room_height,room_width,0);
draw_rectangle(border_r,0,room_width,room_height,0);*/
draw_set_color(c_white);
draw_roundrect(border_l,border_u,border_r,border_d,1);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(f_pixel);
draw_text((border_r + room_width)/2,64 - 16,/*rank[RANK]*//*string_hash_to_newline("Testing 1 2 3...")*/t / room_speed);

var uix = border_r + 40;

draw_set_halign(0);
draw_set_valign(0);
draw_set_font(f_spixel);
draw_text(uix,32 * 3,string_hash_to_newline("MaxScore : " + string(SCORE)));//INFINITY");
draw_text(uix,32 * 4.5,string_hash_to_newline("Score : " + string_format(SCORE,0,0)));

draw_text(border_r + 48,32 * 6.5,string_hash_to_newline("Life :"));
for(var i = 1;i <= 8;i++)
    draw_roundrect(border_r + 112 + i * 32,32 * 7 - 8,border_r + 112 + i * 32 + 24,32 * 7 + 16,LIFE < i);
draw_text(border_r + 48,32 * 8,string_hash_to_newline("Spell:"));
for(var i = 1;i <= 8;i++)
    draw_roundrect(border_r + 112 + i * 32,32 * 8.5 - 8,border_r + 112 + i * 32 + 24,32 * 8.5 + 16,BOMB < i);
    
draw_text(uix,32 * 10,string_hash_to_newline("Power : " + string_format(POWER,0,2) + " / 4.00"));
draw_text(uix,32 * 11.5,string_hash_to_newline("Graze : " + string(GRAZE)));
draw_text(uix,32 * 13,string_hash_to_newline("MaxPoint : " + string_format(MAXPOINT,0,0)));

draw_sprite_ext(spr_tit,0,(border_r + room_width)/2,32 * 23,0.65,0.65,15,c_white,1);

draw_set_halign(2);
draw_set_valign(2);
draw_text_outline(border_r - 10,border_d - 10,fps,c_white,c_white,1,c_black,1);

//draw_set_font(f_test)
//	draw_text(border_r - 10,border_d - 10,"我爱你");	

