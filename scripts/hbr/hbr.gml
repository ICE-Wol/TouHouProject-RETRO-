// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function hbr(healthMAX) {
	var dir,start_dir,end_dir,r0,r1;
	if(health >= 0)dir = health / healthMAX * 360;
	else dir = 0;
	start_dir = 90;
	end_dir = start_dir + dir;
	r0 = 150;
	r1 = 160;

	var tex,i,px,py;
	tex = sprite_get_texture(spr_healthbar,0);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_primitive_begin_texture(pr_trianglestrip,tex);
	i = start_dir;
	px = x + lengthdir_x(r0,i);
	py = y + lengthdir_y(r0,i);
	draw_vertex_texture(px,py,0,0);
	px = x + lengthdir_x(r1,i);
	py = y + lengthdir_y(r1,i);
	draw_vertex_texture(px,py,0,1);
	do{
	    px = x + lengthdir_x(r0,i);
	    py = y + lengthdir_y(r0,i);
	    draw_vertex_texture(px,py,0.5,0);
	    px = x + lengthdir_x(r1,i);
	    py = y + lengthdir_y(r1,i);
	    draw_vertex_texture(px,py,0.5,1);
	    i += 1;
	}
	until(i >= end_dir)
	i = end_dir;
	px = x + lengthdir_x(r0,i);
	py = y + lengthdir_y(r0,i);
	draw_vertex_texture(px,py,1,0);
	px = x + lengthdir_x(r1,i);
	py = y + lengthdir_y(r1,i);
	draw_vertex_texture(px,py,1,1);

	draw_primitive_end();
	draw_set_colour(c_red);
	draw_set_circle_precision(64); 
	draw_circle(x,y,r0,1);
	draw_circle(x,y,r1,1);



}
