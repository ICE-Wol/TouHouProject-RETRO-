/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
timer ++;

if(!(timer % 15) && timer <= 5 * room_speed && timer >= 0){
	for(var i = 0;i < 2;i++){
		var xx = 0;
		var yy = 256;
		var Id = instance_create_layer(xx, yy, "Enemy", obj_f_08);
		Id.sx = xx;
		Id.sy = yy;
	}
}

if(!(timer % 15) && timer <= 11 * room_speed && timer >= 6* room_speed){
	for(var i = 0;i < 2;i++){
		var xx = 850;
		var yy = 256;
		var Id = instance_create_layer(xx, yy, "Enemy", obj_f_09);
		Id.sx = xx;
		Id.sy = yy;
	}
}

if(!(timer % 30) && timer <= 17 * room_speed && timer >= 12 * room_speed){
	for(var i = 0;i < 2;i++){
		var xx = 900 - i * 10 + random_range(-30,30);
		var yy = 128 + i * 50 + random_range(-30,30);
		var Id = instance_create_layer(xx, yy, "Enemy", obj_f_04);
		Id.sx = xx;
		Id.sy = yy;
	}
}

if(timer == 13 * room_speed){
	instance_create_layer(285, 1, "Enemy", obj_f_05);	
}

if(!(timer % 30) && timer >= 20 * room_speed && timer <= 25 * room_speed){
	for(var i = 0;i < 2;i++){
		var xx = -32 - i * 10 + random_range(-30,30);
		var yy = 128 + i * 50 + random_range(-30,30);
		var Id = instance_create_layer(xx, yy, "Enemy", obj_f_06);
		Id.sx = xx;
		Id.sy = yy;
	}
}

if(timer == 21 * room_speed){
	instance_create_layer(638, 1, "Enemy", obj_f_05);	
}

if(timer == 30 * room_speed){
	instance_create_layer(446, 1, "Enemy", obj_f_07);	
}

if(timer == 40 * room_speed){
	instance_create_layer(0, 0, "Enemy", obj_f_10);	
}

if(timer == 45 * room_speed){
	instance_create_layer(0, 0, "Enemy", obj_f_11);	
}

if(timer == 55 * room_speed){
	instance_create_layer(0, 0, "Enemy", obj_e_01);	
}