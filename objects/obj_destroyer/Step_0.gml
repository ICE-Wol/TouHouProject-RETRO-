/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
timer++;

with obj_dm_00 {
	var Id = instance_create_layer(x,y,"Danmaku",obj_dm_ds);
	Id.image_index = self.image_index;
	instance_destroy();
}

if(timer > 60){
	instance_destroy();	
}