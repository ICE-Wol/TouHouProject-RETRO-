/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(!collided){
	with (other){
		HP -= other.atk;
		var snd = audio_play_sound(se_damage00, 0, 0);
		audio_sound_gain(snd, SE_VOLUME, 0);
	}
	collided = 1;
}