/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
timer ++;
image_angle += 5;

if(keyboard_check(ord("Z"))){
	if(!(timer % 10)){
		instance_create_layer(x, y, "Player", obj_bulleth);
	}
}

//position control
var tarx = obj_player.x;
var tary = obj_player.y;
var p = floor(POWER);
if(POWER == 4){
	p = 4;	
}
var range = p * 30;
var dir,dis = 100;

if(keyboard_check(vk_shift)) dis /= 2;

if(p == 1){
	tary -= dis;
}else{
	dir = range / (p - 1) * (num - 1) - range / 2;
	tarx += dis * dcos(dir - 90);
	tary += dis * dsin(dir - 90);
}
x = adv(x, tarx, 4);
y = adv(y, tary, 4);

//show_debug_message(POWER);
