/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
pointNum = 120;
head = 0;

speed = 3;
direction = 0;

d = 0;

randomize();

var i;
for(i = 0; i < pointNum; i += 1)
{
    xQueue[i] = x;
    yQueue[i] = y;
}

tex = sprite_get_texture(spr_dm_0,0);
width = 4;
texw = texture_get_width(tex);
texh = texture_get_height(tex);

