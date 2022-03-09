/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
time = shader_get_uniform(sha_twist, "time"); 
mask = shader_get_sampler_index(sha_twist, "mask");
t = 0;

surf = surface_create(512, 512);