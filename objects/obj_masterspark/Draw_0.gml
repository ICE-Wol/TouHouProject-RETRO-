/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
image_yscale = scale_eff;
draw_sprite_ext(spr_bomb01_1,0,x,y,4,scale_eff,image_angle + 3,c_white,0.3);
draw_sprite_ext(spr_bomb01_1,0,x,y,4,scale_eff,image_angle - 3,c_white,0.3);
draw_self();
if(is_bombing){
    timer ++;
    if(!(timer mod 15))
        counter++;
    for(var i = 0;i <= counter;i++){
        h[i] += 25;
        tar[i] = adv(tar[i],2.4,12);
        draw_sprite_ext(spr_bomb01_2,0,x + h[i] * dcos(image_angle),y - h[i] * dsin(image_angle),tar[i],tar[i],image_angle,c_white,0.4);
    }
}

draw_set_color(c_white);
draw_set_alpha(1);
gpu_set_blendmode_ext(bm_inv_dest_color,bm_add);
draw_set_circle_precision(64);
if(is_bombing) draw_circle(x,y,r_eff + random(10),0);
else draw_circle(x,y,r_eff,0);
gpu_set_blendmode(bm_normal);