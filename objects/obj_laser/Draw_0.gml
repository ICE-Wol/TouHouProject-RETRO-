/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
image_angle = timer * 10;
//draw_sprite_ext(spr_pl01_s,0,x,y,scale_a * 2,scale_a * 2,0,c_white,0.6);
draw_self();

draw_set_color(c_white);
draw_set_alpha(0.8);
var tex = sprite_get_texture(spr_laser,0);
if(!collided){
    wid = 0.5;
    draw_set_alpha(0.8);
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y,down,1);
    draw_vertex_texture(x + r_eff,y,down,0);
    draw_vertex_texture(x - r_eff,y - 512,up,1);
    draw_vertex_texture(x + r_eff,y - 512,up,0);
    draw_primitive_end();
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y - 512,down,1);
    draw_vertex_texture(x + r_eff,y - 512,down,0);
    draw_vertex_texture(x - r_eff,y - 1024,up,1);
    draw_vertex_texture(x + r_eff,y - 1024,up,0);
    draw_primitive_end();
}else{
    wid = 0.5;
    gpu_set_blendmode(bm_add);
    draw_set_alpha(0.4);
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y,down,1);
    draw_vertex_texture(x + r_eff,y,down,0);
    draw_vertex_texture(x - r_eff,y - 512,up,1);
    draw_vertex_texture(x + r_eff,y - 512,up,0);
    draw_primitive_end();
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y - 512,down,1);
    draw_vertex_texture(x + r_eff,y - 512,down,0);
    draw_vertex_texture(x - r_eff,y - 1024,up,1);
    draw_vertex_texture(x + r_eff,y - 1024,up,0);
    draw_primitive_end();
    gpu_set_blendmode(bm_normal);
    /*draw_sprite_ext(spr_laser_eff_00,0,x,border_y,2,2,90,c_white,0.8);
    if(border_y < y - 512){
        wid = (- border_y + y - 512)/1024;
        draw_primitive_begin_texture(pr_trianglestrip, tex);
        draw_vertex_texture(x - r_eff,y,down,1);
        draw_vertex_texture(x + r_eff,y,down,0);
        draw_vertex_texture(x - r_eff,border_y,up,1);
        draw_vertex_texture(x + r_eff,border_y,up,0);
        draw_primitive_end();
    }
    else{
        wid = 0.5;
        draw_primitive_begin_texture(pr_trianglestrip, tex);
        draw_vertex_texture(x - r_eff,y,down,1);
        draw_vertex_texture(x + r_eff,y,down,0);
        draw_vertex_texture(x - r_eff,y - 512,up,1);
        draw_vertex_texture(x + r_eff,y - 512,up,0);
        draw_primitive_end();
        wid = (- y + 512 + border_y)/1024;
        draw_primitive_begin_texture(pr_trianglestrip, tex);
        draw_vertex_texture(x - r_eff,y - 512,down,1);
        draw_vertex_texture(x + r_eff,y - 512,down,0);
        draw_vertex_texture(x - r_eff,border_y,up,1);
        draw_vertex_texture(x + r_eff,border_y,up,0);
        draw_primitive_end();
    }*/
}
/*if(collided){
    
}else{

}*/

/*if(border_y >= y - 512){
    wid = (border_y - y)/1024;
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y,down,1);
    draw_vertex_texture(x + r_eff,y,down,0);
    draw_vertex_texture(x - r_eff,border_y,up,1);
    draw_vertex_texture(x + r_eff,border_y,up,0);
    draw_primitive_end();
}else{
    wid = 0.5;
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y,down,1);
    draw_vertex_texture(x + r_eff,y,down,0);
    draw_vertex_texture(x - r_eff,y - 512,up,1);
    draw_vertex_texture(x + r_eff,y - 512,up,0);
    draw_primitive_end();
    wid = (y - 512 - border_y)/1024;
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(x - r_eff,y - 512,down,1);
    draw_vertex_texture(x + r_eff,y - 512,down,0);
    draw_vertex_texture(x - r_eff,border_y,up,1);
    draw_vertex_texture(x + r_eff,border_y,up,0);
    draw_primitive_end();
}*/
draw_set_alpha(1);
   
gpu_set_blendmode(bm_add);
   
draw_sprite_ext(spr_laser_eff_01,1,x,y,scale_b,scale_b,timer * 45,c_white,0.8);
    
gpu_set_blendmode(bm_normal);

/* */
/*  */
