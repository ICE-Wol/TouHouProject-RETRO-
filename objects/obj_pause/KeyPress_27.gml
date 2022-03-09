/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
Paused = !Paused;
if(Paused){
	//t = 1000;
	if(sprite_exists(screen_pic)){
		sprite_delete(screen_pic);	
	}
	screen_pic = sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);
	instance_deactivate_all(1);
	audio_pause_all();
}else{
	instance_activate_all();
	audio_resume_all();
}