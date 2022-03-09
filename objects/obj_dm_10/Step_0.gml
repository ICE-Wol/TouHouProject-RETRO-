/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
event_inherited();

speed = lerp(8,4,timer/60);
if(speed < 4){
	instance_create_layer(x, y, "Danmaku", obj_dm_ds);
	var Id = instance_create_layer(x, y, "Danmaku", obj_dm_08);
	Id.sprite_index = spr_dm_2;
	Id.image_index = 8;
	Id.speed = 3;
	Id.direction = direction;
	Id.image_angle = Id.direction + 90;
	instance_destroy();
}