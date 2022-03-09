/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

if((x - xprevious) != 0){
	image_xscale = 2 * sign(x - xprevious);
}else{
	image_xscale = 2;
}

if((x - xprevious) != 0){
	if(image_index > 11){
		image_index = 8;
	}
}else{
	if(image_index > 4)
		image_index = 0;
}

if(HP <= 0){
	var snd = audio_play_sound(se_enep00, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	instance_destroy();
}

if(x < -100 || y < -100 || x > 932 || y > 1028)
	instance_destroy();