/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
with obj_item
    trigger = true;
if(is_bombing){
    scale_eff = adv(scale_eff,3.5,4);
    r_eff = adv(r_eff,1000,8);
}else{
    scale_eff = adv(scale_eff,0,4);
    r_eff = adv(r_eff,0,8);
}
if(is_bombing == false && r_eff <= 0.1)
    instance_destroy();

x = obj_player.x;
y = obj_player.y;

if(keyboard_check(vk_left)){
    image_angle += 0.1;
}
if(keyboard_check(vk_right)){
    image_angle -= 0.1;
}