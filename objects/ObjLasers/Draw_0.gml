/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add);
xQueue[head] = x; yQueue[head] = y;
head += 1; head = head mod pointNum;

d += 0.5
direction = sin(d) * 35;

var i, o, xx, yy, px, py, dir, ax, ay, bx, by, tx;

draw_set_color(c_white); draw_set_alpha(1);

draw_primitive_begin_texture(pr_trianglestrip, tex);

for(i = 0; i < pointNum; i += 1)
{
    o = (head + i) mod pointNum;
    xx = xQueue[o];     yy = yQueue[o];
    if(i != 0)
    {
        dir = point_direction(xx, yy, px, py);
        ax = lengthdir_x(width, dir - 90) + xx; 
        ay = lengthdir_y(width, dir - 90) + yy;
        bx = lengthdir_x(width, dir + 90) + xx; 
        by = lengthdir_y(width, dir + 90) + yy;
        tx = (i - 1) * texw / (pointNum - 1);
        draw_vertex_texture(ax, ay, tx, 0 * texh);
        draw_vertex_texture(bx, by, tx, 1 * texh);
    }
    px = xx; py = yy;
}

draw_primitive_end();

draw_set_color(c_black);
for(i = 0; i < pointNum; i += 1)
{
    o = (head + i) mod pointNum;
    xx = xQueue[o]; yy = yQueue[o];
    if(i != 0)
    {
        tx = (i - 1) / (pointNum - 1);
        if(0.1 < tx && tx < 0.9)
        {
            //if(mouse_check_button(mb_left)) draw_line(px, py, xx, yy);
            //if(collision_line(px, py, xx, yy, object1, 1, 1))
			//{}
                
        }
    }
    px = xx; py = yy;
}
gpu_set_blendmode(bm_normal);