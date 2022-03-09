/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//timer_b ++;
timer_a ++;
dir += 0.5;
image_angle = dir * 20;
timer_c ++;
rest = timer_c % (2 * room_speed) >= 0 && timer_c % (2 * room_speed) <= 1/5 * room_speed;

event_inherited();

	if(!(timer_a % 30)){
		wave = 1;
	}

	if(wave && ! rest){
		timer_b ++;
		if(!(timer_b % 5)){
			var snd = audio_play_sound(se_tan00, 0, 0);
			audio_sound_gain(snd, SE_VOLUME, 0);
			
			for(var i = - 10;i <= 10;i += 10){
				var Id = instance_create_layer(x,y,"Danmaku",obj_dm_10);
				Id.direction = i + dir;
			}
			for(var i = 110;i <= 130;i += 10){
				var Id = instance_create_layer(x,y,"Danmaku",obj_dm_10);
				Id.direction = i + dir;
			}
			for(var i = -130;i <= -110;i += 10){
				var Id = instance_create_layer(x,y,"Danmaku",obj_dm_10);
				Id.direction = i + dir;
			}
		
			for(var i = - 30;i < 30;i += 10){
				var Id = instance_create_layer(x,y,"Danmaku",obj_dm_10);
				Id.direction = i - dir;
			}
			for(var i = 90;i < 150;i += 10){
				var Id = instance_create_layer(x,y,"Danmaku",obj_dm_10);
				Id.direction = i - dir;
			}
			for(var i = -150;i < -90;i += 10){
				var Id = instance_create_layer(x,y,"Danmaku",obj_dm_10);
				Id.direction = i - dir;
			}
			cnt++;
		}
		if(cnt >= 3){
			cnt = 0;
			wave = 0;
		}
	}

if(time < 0){
	tarx = 200;
	tary = -200;
	if(abs(x - tarx) < 0.01){
		instance_destroy();	
	}
}