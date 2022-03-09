/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
timer ++;
if(scale > 2){
	scale = lerp(6,2,timer/10);
	alpha = lerp(0,1,timer/30);
	if(alpha > 1) alpha = 1;
}else{
	scale = 2;
	alpha = 1;
}

image_xscale = scale;
image_yscale = scale;
image_alpha = alpha;

if(x < 0 || x > 896 || y < 0 || y > 960)
	instance_destroy();