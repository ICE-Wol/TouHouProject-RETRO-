/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(HP <= 0){
	with instance_create_layer(x, y, "Item", obj_item)
		type = 2;
}

event_inherited();