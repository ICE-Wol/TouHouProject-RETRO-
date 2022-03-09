/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
event_inherited();

if(timer >= 120){
	speed = lerp(4,2,timer/60);
	if(speed < 2) speed = 2;
}	