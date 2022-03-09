/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
Paused = 0;
screen_pic = 0;

size = shader_get_uniform(sha_blur, "size");
motion = shader_get_uniform(sha_blur, "motion");
time = shader_get_uniform(sha_blur, "time");
m = 0;
//t = 1000;