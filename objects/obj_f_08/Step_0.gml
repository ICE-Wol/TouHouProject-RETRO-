x = sx - timer_a * dcos(190);
y = sy + timer_a * dsin(190);
timer_a += 5;
event_inherited();

timer ++;
if(timer % (1.5 * room_speed) == 0.3 * room_speed){
	wave = 1;	
}

if(wave){
	var snd = audio_play_sound(se_tan00, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	for(var i = 0; i < 360; i += 90){
		for(var j = 4; j < 10; j ++){
			var Id = instance_create_layer(x, y, "Bullet", obj_dm_08);
			Id.direction = dir + i;
			Id.image_index = 6;
			Id.speed = j * 2;
		}
	}
	wave = 0;
		
}