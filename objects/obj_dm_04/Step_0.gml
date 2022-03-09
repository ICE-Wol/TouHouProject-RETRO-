/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
event_inherited();
timer_a ++;
speed = lerp(8,0,timer_a/60);
if(speed < 0){
	speed = 0;
	timer_b ++;
	if(!(timer_b % 5)){
		for(var i = 0;i < 360;i += 36){
			var xx = x,yy = y,dis = 40;
			xx += dis * (cnt + 1) * dcos(i);
			yy += dis * (cnt + 1) * dsin(i);
			var Id = instance_create_layer(xx, yy, "Danmaku", obj_dm_05);
			//Id.speed = 5;
			Id.direction = -i;
		}
		cnt++;
	}
	if(cnt >= 5){
		with(obj_dm_05){
			speed = 5;	
		}
		var Id = instance_create_layer(x,y,"Danmaku",obj_dm_ds);
		Id.col = col;
		instance_destroy();
	}
}
