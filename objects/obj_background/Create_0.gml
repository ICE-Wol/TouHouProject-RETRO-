/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//time = shader_get_uniform(sha_bg_02,"u_time");

time = shader_get_uniform(sha_bg_03,"time");

dist_pow = shader_get_uniform(sha_bg_03,"dist_pow");
//bigger liker water
//smaller liker cell
//about white part

vsp = shader_get_uniform(sha_bg_03,"vsp");
//plus big is ok
//flying speed

base_color = shader_get_uniform(sha_bg_03,"base_color");
//color

//texture = shader_get_sampler_index(sha_bg_03,"texture");

t = 0;
v = 0;
dp = 3.6;
//tex = sprite_get_texture(bg_st01d, 0);

surf = surface_create(room_width, room_height);

//draw_sprite_pos_fixed
vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position();
vertex_format_add_normal();
global.format_perspective = vertex_format_end();