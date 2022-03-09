/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(!surface_exists(surf))
	surf = surface_create(room_width, room_height);
	
surface_set_target(surf);
shader_set(sha_bg_03);
shader_set_uniform_f(time, t);
shader_set_uniform_f(dist_pow, dp);
shader_set_uniform_f(vsp, v);
shader_set_uniform_f(base_color, 0, 0.5, 0.9);
draw_sprite_stretched(spr_wall, 0, 0, 0, room_width, room_height);
shader_reset();
draw_sprite_tiled_ext(bg_st01d, 0, 0, - t * 200, 2, 2, c_white, 0.5);
surface_reset_target();

var tex = surface_get_texture(surf);
draw_sprite_pos_fixed(tex, 0, 0, 960, 0, 1760, 960, -800, 960, c_aqua);