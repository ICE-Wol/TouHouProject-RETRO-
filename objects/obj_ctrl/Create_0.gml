/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//test
biu = 0;
t = 0;

//globalvar
globalvar SCORE;
globalvar LIFE;
globalvar BOMB;
globalvar POWER;
globalvar MAXPOINT;
globalvar GRAZE;
globalvar SPECIAL;
globalvar LIFEPIECE;
globalvar BOMBPIECE;

globalvar MUS_VOLUME;
globalvar SE_VOLUME;

SCORE = 0;
LIFE = 2;
BOMB = 3;
POWER = 1.0;
MAXPOINT = 5000;
GRAZE = 0;
SPECIAL = 0;
LIFEPIECE = 0;
BOMBPIECE = 0;

MUS_VOLUME = 1;
SE_VOLUME = 0.1;

//audio
var snd = audio_play_sound(mus_game, 1, 1);
audio_sound_gain(snd, MUS_VOLUME, 0);

//border
#macro border_l 64
#macro border_u 32
#macro border_r 832
#macro border_d 928
#macro border_m 448
#macro border_item 256