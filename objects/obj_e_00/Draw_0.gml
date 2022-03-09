/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(f_pixel);
draw_set_alpha(alpha);
if(time >= 0) draw_text_outline(border_m, 48, time / room_speed,c_white,c_white,1,c_black,1);
draw_set_alpha(1);

gpu_set_blendmode(bm_add);
//var tex = sprite_get_texture(spr_magsquare, 0);
//draw_sprite_pos_fixed(tex, xx[1], yy[1], xx[2], yy[2], xx[3], yy[3], xx[4], yy[4], c_white);
draw_sprite_ext(spr_magsquare, 0, x, y,2 * (dsin(timer) + 2) / 3, 2, timer, c_white, 1);
gpu_set_blendmode(bm_normal);


hbr(HP);