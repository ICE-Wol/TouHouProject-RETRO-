/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

// Inherit the parent event
if(HP <= 0){
	with instance_create_layer(x, y, "Item", obj_item)
		type = 1;
}

event_inherited();
