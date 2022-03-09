/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
BOMB -= 1;

scale_eff = 0;
is_bombing = true;
timer = 0;
counter = 0;
r_eff = 0;
for(var i = 0;i < 40;i++){
    tar[i] = 0;
    h[i] = 0;
}

image_xscale = 4;
image_angle = 90;
image_alpha = 0.6;


var snd = audio_play_sound(se_nep00, 5, 0)
audio_sound_gain(snd, SE_VOLUME, 0);

instance_create_layer(x, y, "Effect", obj_shaking);

alarm[0] = 5 * room_speed;
