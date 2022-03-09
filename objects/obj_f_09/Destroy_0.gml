/// @description 

// Inherit the parent event
if(HP <= 0){
	with instance_create_layer(x, y, "Item", obj_item)
		type = 1;
}

event_inherited();
