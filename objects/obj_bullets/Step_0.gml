/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

scale = adv(scale, 4, 16);
image_alpha = adv(image_alpha, 0, 2);

if(image_alpha < 0.001) instance_destroy();