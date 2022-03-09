event_inherited();

if(y < 280) y += 5;
else timer_a ++;
if(timer_a >= 8 * 60){
	stop = 1;
	y += 3;
}
dir += 1;
timer += 3;

if(!(timer_a % 150)){
	wave = 1;
}




if(wave && !stop && !tag){
	var snd = audio_play_sound(se_kira00, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	for(var i = 0;i <= 360;i += 60){
		var xx,yy,dis = 100,d;
		d = point_direction(x, y, obj_player.x, obj_player.y);
		xx = x + dis * dsin(i + dir);
		yy = y + dis * dcos(i + dir);
		var Id = instance_create_layer(xx,yy,"Danmaku",obj_dm_06);
		Id.image_index = 8;
		Id.direction = d + i + 270;
		Id.speed = 5;
	}
	wave = 0;
	tag = 1;
}

if(wave && !stop && tag){
	audio_play_sound(se_kira00, 0, 0);
	for(var i = 0;i <= 360;i += 60){
		var xx,yy,dis = 100,d;
		d = point_direction(x, y, obj_player.x, obj_player.y);
		xx = x + dis * dsin(i + dir);
		yy = y + dis * dcos(i + dir);
		var Id = instance_create_layer(xx,yy,"Danmaku",obj_dm_07);
		Id.image_index = 4;
		Id.direction = d + i + 90;
		Id.speed = 5;
	}
	wave = 0;
	tag = 0;
}