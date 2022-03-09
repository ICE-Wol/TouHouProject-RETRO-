/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(!asset){
	asset = asset_get_index("spr_item0" + string(type));
	sprite_index = asset;
}

r_eff = adv(r_eff,720,16);
image_angle = r_eff;
spd = adv(spd,3,16);
speed = spd;

if(y >= room_height) instance_destroy();
if(point_distance(x,y,obj_player.x,obj_player.y) <= 100)
	trigger = 1;
if(trigger){
    move_towards_point(obj_player.x,obj_player.y,20);
    if(point_distance(x,y,obj_player.x,obj_player.y) <= 10){
        x = obj_player.x;
        y = obj_player.y;
        speed = 0;
        instance_destroy();
    }
}

