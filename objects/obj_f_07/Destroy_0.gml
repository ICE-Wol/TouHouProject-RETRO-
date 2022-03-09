/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(HP <= 0){
	for(var i = 1; i <= 10; i++)
		with instance_create_layer(x + random_range(-50, 50), y + random_range(-50, 50), "Item", obj_item)
			type = 1;
}

event_inherited();