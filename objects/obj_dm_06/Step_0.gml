event_inherited();
speed -= 0.005;
if(speed < 2) speed = 2;

direction += 0.5;

if(!(timer % 1)){
	var posx = x, posy = y;
	dir += 20;
	dis -= 1;
	if(dis <= 0) instance_destroy();
	posx += dis * dcos(dir);
	posy += dis * dsin(dir);
	var Id = instance_create_layer(posx, posy, "Danmaku", obj_dm_03);
	Id.direction = - dir + 180;
	Id.image_angle = - dir + 270;
	Id.image_index = 8;
}