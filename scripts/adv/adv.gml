// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function adv(now, tar, spd) {
	//这是一个渐进函数
	//arg0 当前数  arg1 要靠近的数 arg2 速度参数
	if(now < tar){
	    now += (tar - now)/spd;
	    //if(now > tar) now = tar;
	}
	else{
	    now -= (now - tar)/spd;
	    //if(now < tar) now = tar;
	}
	return now;
}