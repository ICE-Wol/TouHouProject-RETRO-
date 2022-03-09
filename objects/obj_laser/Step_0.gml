/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
timer++;
down -= 0.02;
if(down < 0)down = wid;
up = wid + down;

if(!obj_player.is_slow)off = offset[floor(POWER),num];
else off = offset[floor(POWER),num]/2;
x = adv(x,obj_player.x + off,8);
y = adv(y,obj_player.y - 64,8);
r_eff = adv(r_eff,r,4);
scale_b = adv(scale_b,scale_a,8);

//var arg = collision_line(x,y,x,0,obj_enemy,0,0);
var arg2 = collision_line(x,y,x,0,obj_e,0,0);
/*if(is_shooting && arg){
    //border_y = arg.y;
    collided = true;
    health -= 1;
}else */if(is_shooting && arg2){
    collided = true;
    arg2.HP -= 1;
}else{
    //border_y = adv_g(border_y,0,16);
    collided = false;
}

if(keyboard_check(ord("Z"))){
    scale_a = dsin(timer * 15)/5 + 0.9;
    is_shooting = true;
    r = 16;
}else{
    scale_a = 0;
    is_shooting = false;
    r = 0;
}
