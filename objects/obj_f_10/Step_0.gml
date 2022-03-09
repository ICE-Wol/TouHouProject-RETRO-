/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
x -= 1;

event_inherited();
timer_a ++;
dir += 1;

if(!(timer_a % 1)){
	wave = 1;
}
if(!(timer_a % 90)){
	var snd = audio_play_sound(se_kira00, 1, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	//开花弹幕
	var d = random(360);
	for(var j = 1; j <= 3; j++)
		for(var i = 0; i < 360; i += 5){
			var xx = x, yy = y, dis = dsin(timer_a) * 50, d = direction + 90;
			xx += dis * dcos(d);
			yy += dis * dsin(d);
			var dis = 10 + abs(i % 60 - 30) * 3;
			xx += dis * dcos(i + d);
			yy += dis * dsin(i + d);
			var Id = instance_create_layer(xx, yy, "Danmaku", obj_dm_09);
			Id.sprite_index = spr_dm_4;
			Id.image_index = 4;
			Id.alarm[0] = 0.5 * room_speed;
			Id.direction =  - (i + d) - 180;
			Id.spd = j * 8;
		}
}

if(wave){
	timer_b ++;
	if(!(timer_b % 5)){
		cnt++;
		
		//正弦轨迹弹幕
		var xx = x, yy = y, dis = dsin(timer_a) * 50, d = direction + 90;
		xx += dis * dcos(d);
		yy += dis * dsin(d);
		var Id = instance_create_layer(xx, yy, "Danmaku", obj_dm_09);
		Id.image_index = 7;
		Id.alarm[0] = 3 * room_speed;
		Id.direction = - dir;
		Id.image_angle = - dir - 90;
		Id.spd = cnt * 5;
		
		var xx = x, yy = y, dis = dsin(timer_a) * 50, d = direction - 90;
		xx += dis * dcos(d);
		yy += dis * dsin(d);
		var Id = instance_create_layer(xx, yy, "Danmaku", obj_dm_09);
		Id.image_index = 7;
		Id.alarm[0] = 3 * room_speed;
		Id.direction = dir;
		Id.image_angle = dir - 90;
		Id.spd = cnt * 5;
	}
	if(cnt >= 3){
		cnt = 0;
		wave = 0;
		timer_b = 0;
	}
}