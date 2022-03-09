if(HP <= 0){
	with instance_create_layer(x, y, "Item", obj_item)
		type = 2;
}

event_inherited();

