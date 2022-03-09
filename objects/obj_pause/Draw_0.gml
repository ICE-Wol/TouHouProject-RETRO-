/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(Paused){
	shader_set(sha_blur);
	shader_set_uniform_f(size, room_width, room_height, 64);
	shader_set_uniform_f(motion, sin(m) * 0.5 + 0.2);
	//shader_set_uniform_f(time, t);
	draw_sprite(screen_pic, 0, 0, 0);
	shader_reset();
}