/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
HP = 1000;
health = 1000;
time = 30 * room_speed;
alpha = 1;
rest = 0;
tarx = border_m;
tary = 128;

image_speed = 0.2;
image_xscale = 2;
image_yscale = 2;

timer = 0;
timer_a = 0;
timer_b = 0;
wave = 0;
cnt = 0;
dir = 0;

tmp = instance_create_layer(x, y, "Effect", obj_twist);