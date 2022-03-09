//show_debug_message(room_speed);

//basic
timer++;

//movement control
var U,D,L,R,vspd,hspd;
U = keyboard_check(vk_up);//ord("W"));
D = keyboard_check(vk_down);//ord("S"));
L = keyboard_check(vk_left);//ord("A"));
R = keyboard_check(vk_right);//ord("D"));
is_slow = keyboard_check(vk_shift);
if(able_to_move){
	vspd = spd * (D - U);
	//down is the positive direction
	hspd = spd * (R - L);
	//right is the positive direction
	if(!bombing){
		if(is_slow){
			vspd *= slow_rate;
			hspd *= slow_rate;
		}
	}else{
		vspd = 0.5 * (D - U);
		hspd = 0.5 * (R - L);
	}
	vspd *= max(sqrt(0.5),L == R);
	//when L or R is pressed and vspd is NOT zero
	hspd *= max(sqrt(0.5),U == D);
	
	x += hspd;
	y += vspd;
	
	//movement restriction
	if(x < 72) x = 72;
	if(x > 824) x = 824;
	if(y < 40) y = 40;
	if(y > 920) y = 920;
}

//animation control
if(R - L > 0){
	sprite_index = spr_pl01_rt;
	if(image_index >= 7)
		image_index = 3;
} else if (R - L < 0){
	sprite_index = spr_pl01_lt;
	if(image_index >= 7)
		image_index = 3;
} else sprite_index = spr_pl01_st;

//checkpoint
var ck_pressed = keyboard_check_pressed(vk_shift);
var ck_released = keyboard_check_released(vk_shift);
if(ck_pressed || ck_released){
	ck_rot = 0;
}
ck_rot++;
if(is_slow){
	if(ck_scale < 2)
		ck_scale = lerp(0,2,ck_rot / ck_lerp_t);	
	else ck_scale = 2;
}else{
	if(ck_scale > 0)
		ck_scale = lerp(2,0,ck_rot / ck_lerp_t);	
	else ck_scale = 0;
}

//danmaku check
with(obj_dm_00){
	var dist = (obj_player.x - x) * (obj_player.x - x)
	          +(obj_player.y - y) * (obj_player.y - y);	
	var biu = self.size * self.size + obj_player.size * obj_player.size;
	var gra = self.size * self.size + obj_player.size * obj_player.size
		* obj_player.graze_dist * obj_player.graze_dist;
	if(dist < biu){
		with(obj_player)
			if(!(invincible || bombing) && !t_miss)
				t_miss = 1;
		instance_destroy();
	}
	
	//graze check
	if(dist < gra && dist > biu && !grazed){
		grazed = 1;
		GRAZE ++;
		MAXPOINT ++;
		var snd = audio_play_sound(se_graze, 0, 0);
		audio_sound_gain(snd, SE_VOLUME, 0);
		instance_create_layer(obj_player.x, obj_player.y, "Effect", obj_graze);
		//show_debug_message("grazed!");
	}
}

//jue si
if(t_miss){
	t_miss ++;
	show_debug_message(t_miss)
}
if(t_miss <= 10 && keyboard_check(ord("X"))){
	t_miss = 0;	
}else if(t_miss > 10){
	LIFE -= 1;
	POWER -= 0.5;
	if(POWER < 1)POWER = 1;
	BOMB = 3;
	instance_create_layer(x,y,"Effect",obj_destroyer);
	var snd = audio_play_sound(se_pldead00,2,0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	able_to_move = false;
	invincible += 3 * room_speed;
	reboring = true;
	x = border_m;
	y = room_height + 32;
	sprite_index = spr_pl01_st;
	move_towards_point(border_m,room_height - 96,3);
	t_miss = 0;
}

//Rebore Control
if(reboring){
    if(point_distance(x,y,border_m,room_height - 96) <= 3){
        x = border_m;
        y = room_height - 96;
        speed = 0;
        able_to_move = true;
        reboring = false;
    }
}

//shoot
if(keyboard_check(ord("Z")) && !(timer % 3) && !(bombing)){
	var snd = audio_play_sound(se_plst00, 0, 0);
	audio_sound_gain(snd, SE_VOLUME, 0);
	instance_create_layer(x - 20,y,"Player",obj_bullet);
	instance_create_layer(x + 20,y,"Player",obj_bullet);
}

//Bomb Control
if(keyboard_check(ord("X")) && BOMB > 0 && !bombing){
    is_slow = false;
    bombing = true;
    instance_create_layer(x, y, "Bullet", obj_masterspark);
}

//power
for(var i = 1; i <= POWER;i++){
	if(!sub[i]){
		sub[i] = 1;
		var Id = instance_create_layer(x, y, "Sub", obj_yyorb);
		Id.num = i;
	}
}
with(obj_yyorb){
	if(num > POWER){
		obj_player.sub[num] = 0;
		instance_destroy();
	}
}

//invincible
if(invincible){
	invincible --;	
}

//Item Get Line Control
if(y <= border_item)
    with obj_item
        trigger = true;