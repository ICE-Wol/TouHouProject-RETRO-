timer ++;

//collided effect
if(collided){
	image_speed = 0.5;
	image_xscale += 0.1;
	image_yscale += 0.1;
	speed = 0;
}
if(image_index >= 2.9)
	instance_destroy();

//homing
if(timer < 90) {
	var Id = instance_nearest(x, y, obj_e);
	if(Id != noone){
		dir = point_direction(x, y, Id.x, Id.y);
	}	
	if(abs(direction - dir) > 5){
		if(abs(direction - dir) < 180){
			direction -= sign(direction - dir) * timer/10;
		}else direction += sign(direction - dir) * timer/10;
	}else direction = dir;
	
	image_angle = direction;
}

//trailing effect
var Id = instance_create_layer(x, y, "Bullet", obj_bullets);
Id.direction = direction;
Id.speed = 0;
Id.image_angle = direction;