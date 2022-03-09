/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(point_distance(border_m, 48, obj_player.x, obj_player.y) < 64){
	alpha = adv(alpha, 0.5, 4);	
}else{
	alpha = adv(alpha, 1, 4);	
}

if(health <= 0){
	var snd = audio_play_sound(se_enep01, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	instance_create_layer(x, y, "Effect", obj_destroyer);
	instance_destroy();	
}

if(time < 0 && !rest){
	var snd = audio_play_sound(se_alarm, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	rest = 1;
}

timer ++;
if(timer % (2 * room_speed) == 0){
	tarx += sign(obj_player.x - x) * random(128);
	tary += random_range(-64, 64);
	if(tary < 32) tary = 32;
	
}

x = adv(x, tarx, 16);
y = adv(y, tary, 16);

time --;

tmp.x = x;
tmp.y = y;
