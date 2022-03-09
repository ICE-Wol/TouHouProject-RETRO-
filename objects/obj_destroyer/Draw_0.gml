/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
draw_set_color(c_white);
gpu_set_blendmode_ext(bm_inv_dest_color,bm_zero);
draw_set_circle_precision(64);
draw_circle(x,y,timer / 50 * 1280,0);
draw_circle(x + 64,y,timer / 50 * 960,0);
draw_circle(x - 64,y,timer / 50 * 960,0);
draw_circle(x,y + 64,timer / 50 * 960,0);
draw_circle(x,y - 64,timer / 50 * 960,0);
if(timer > 30) draw_circle(x,y - 64,(timer - 30) / 50 * 1280 + 6,0);
gpu_set_blendmode(bm_normal);
