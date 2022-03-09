/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
scale = adv(scale, 0, 8);
image_xscale = scale;
image_yscale = scale;
if(scale <= 0.01){
	instance_destroy();	
}
