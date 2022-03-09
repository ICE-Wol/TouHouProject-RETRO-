varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dist_pow;
uniform float time;
uniform float vsp;
uniform vec3 base_color;
//uniform sampler2D texture;
//grass texture


float random(vec2 coord) {
	coord = mod(coord, 10000.0);
	return fract(sin(dot(coord, vec2(12.9898,78.233))) * 43758.5453);
}


vec2 random2(vec2 coord) {
	coord = mod(coord, 10000.0);
	return fract(sin(vec2(dot(coord, vec2(127.1,311.7)), dot(coord,vec2(269.5,183.3)))) * 43758.5453);
}

float value_noise(vec2 coord){
	vec2 i = floor(coord);
	vec2 f = fract(coord);

	float tl = random(i);
	float tr = random(i + vec2(1.0, 0.0));
	float bl = random(i + vec2(0.0, 1.0));
	float br = random(i + vec2(1.0, 1.0));

	vec2 cubic = f * f * (3.0 - 2.0 * f);
	
	float topmix = mix(tl, tr, cubic.x);
	float botmix = mix(bl, br, cubic.x);
	float wholemix = mix(topmix, botmix, cubic.y);
	
	return wholemix;

}


float cellular_noise(vec2 coord) {
	vec2 i = floor(coord);
	vec2 f = fract(coord);
	
	float min_dist = 9999.0;

	for(float x = -1.0; x <= 1.0; x++) {

		for(float y = -1.0; y <= 1.0; y++) 
		{
			
			vec2 point = random2(i + vec2(x, y));
			
			point = 0.5 + 0.5 * sin(time + 6.2831 * point);
			vec2 diffs = vec2(x, y) + point - f;
			
			float dist = pow(length(diffs), dist_pow);
			min_dist = min(min_dist, dist);
		}
	}
	return min_dist;
}

float fbm(vec2 coord){
	
	float normalize_factor = 0.0;
	float value = 0.0;
	float scale = 0.5;

	value += cellular_noise(coord) * scale;
	normalize_factor += scale;
	coord *= 2.0;
	scale *= 0.5;
	
	value += cellular_noise(coord) * scale;
	normalize_factor += scale;
	coord *= 2.0;
	scale *= 0.5;
	
	value += cellular_noise(coord) * scale;
	normalize_factor += scale;
	coord *= 2.0;
	scale *= 0.5;
	//layers of the scale
	return value / normalize_factor;
}

void main()
{
	vec2 uv = v_vTexcoord * 6.0 * 50.0;//size of the texture, the bigger the smaller
	float offset = value_noise(uv + time * 1.2) * 0.24;
	float noise = cellular_noise(uv + vec2(0.0, -vsp) + offset - 0.12);
	float sub_noise = fbm(uv + vec2(0.0, -vsp * 0.5) + offset - 0.12) * 0.4;
    gl_FragColor.rgb = base_color * 0.8 /*darker*/ + vec3(noise, noise, noise) + vec3(sub_noise, sub_noise, sub_noise);
	gl_FragColor.a = 1.0;
}