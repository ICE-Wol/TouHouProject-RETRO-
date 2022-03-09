/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
event_inherited();
timer_a ++;
dir += 0.5;

if(!(timer_a % 180)){
	timer_a = 0;
	wave = 1;
}

if(wave){
	for(var i = 0;i < 360;i += 30){
		var Id = instance_create_layer(x,y,"Danmaku",obj_dm_04);
		Id.direction = i;
		wave = 0;
	}
}