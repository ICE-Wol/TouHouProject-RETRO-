//x = sx + timer * dcos(170);
//y = sy + timer * dsin(170);
//show_debug_message(timer_a);
event_inherited();

if(y < 280) y += 5;
else timer_a ++;
if(timer_a >= 8 * 60){
	//timer_a = 1;
	stop = 1;
	y += 3;
}
dir += 1;
timer += 3;

if(!(timer_a % 30)){
	wave = 1;
}

if(wave && !stop){
	var snd = audio_play_sound(se_tan00, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	for(var i = 0;i <= 360;i += 10){
		var xx,yy,dis = 100,tmp;
		tmp = i / 10 % 6;
		var xx = x + (tmp * 20 + dis) * dsin(i + dir);
		var yy = y + (tmp * 20 + dis) * dcos(i + dir);
		var Id = instance_create_layer(xx,yy,"Danmaku",obj_dm_05);
		Id.image_index = 6;
		Id.direction = i + 90;
		Id.image_angle = i;
		Id.speed = 5;
	}
	wave = 0;
}

//show_debug_message(HP);