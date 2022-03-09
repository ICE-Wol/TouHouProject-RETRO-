/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
type = 1;
sprite_index = asset_get_index("spr_pl0" + string(type) + "_s");
image_speed = 0;
timer = 0;
up = 0;
down = 0;
border_y = 0;
wid = 0.5;
collided = false;
is_shooting = false;
r_eff = 0;
r = 0;
scale_a = 0;
scale_b = 0;
num = 0;

offset[1,1] = 0;
offset[2,1] = -32;
offset[2,2] = 32;
offset[3,1] = -64;
offset[3,2] = 0;
offset[3,3] = 64;
offset[4,1] = -96;
offset[4,2] = -32;
offset[4,3] = 32;
offset[4,4] = 96;

