/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
draw_self();

if(invincible){
    alp = sin(timer)/2 + 0.5;
    draw_sprite_ext(sprite_index,-1,x,y,2,2,0,c_red,alp);
}