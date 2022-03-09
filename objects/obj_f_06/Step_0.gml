x = sx - timer * dcos(170);
y = sy + timer * dsin(170);

event_inherited();

timer_a ++;
timer += 3;

if(!(timer_a % 60)){
	timer_a = 0;
	wave = 1;
}

if(wave){
	timer_b ++;
	if(!(timer_b % 5)){
		var snd = audio_play_sound(se_tan00, 0, 0);
		audio_sound_gain(snd, SE_VOLUME, 0);
		var Id = instance_create_layer(x,y,"Danmaku",obj_dm_01);
		dir = point_direction(x,y,obj_player.x,obj_player.y);
		Id.direction = dir;
		cnt++;
	}
	if(cnt >= 3){
		cnt = 0;
		wave = 0;
		timer_b = 0;
	}
}