/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(!surface_exists(surf)){
	surf = surface_create(512, 512);
}

surface_set_target(surf);
draw_surface_part(application_surface, x - 256, y - 256, 512, 512, 0, 0);
surface_reset_target();


//gpu_set_blendmode(bm_add);
shader_set(sha_twist);
shader_set_uniform_f(time, t);
var tex = sprite_get_texture(spr_mask, 0);//surface_get_texture(surf);
texture_set_stage(mask, tex);
draw_surface_ext(surf, x - 256, y - 256, 1, 1, 0, c_yellow, 1);
shader_reset();
//gpu_set_blendmode(bm_normal);