/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
image_xscale = adv(image_xscale, 4, 8);
image_yscale = adv(image_yscale, 0, 8);
image_alpha = adv(image_alpha, 0 , 16);
if(image_alpha <= 0.0001){
	instance_destroy();
}