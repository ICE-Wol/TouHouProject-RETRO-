event_inherited();
speed -= 0.005;
if(speed < 2) speed = 2;

if(!(timer % 20)){
	var posx = x, posy = y, dir ,dis;
	dis = 20;
	dir = random_range(0, 60);
	posx += random_range(-40, 40);
	posy += random_range(-40, 40);
	for(var i = 0;i < 360;i += 60){
		var xx,yy;
		xx = posx + dsin(dir + i) * dis;
		yy = posy + dcos(dir + i) * dis;
		var Id = instance_create_layer(xx, yy, "Danmaku", obj_dm_03);
		Id.direction = dir + i + 90;
		Id.image_angle = dir + i;
	}
}