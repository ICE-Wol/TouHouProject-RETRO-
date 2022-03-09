varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 size;
uniform float motion;
uniform float time;

const int quality = 16;
const int directions = 16;
const float PI = 3.141593;

void main()
{
	vec2 radius = size.z / size.xy; /// time;
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	float wei_total = 1.0, wei;
	for (float d = 0.0; d < PI; d += PI / float(directions))
	{
		for (float i = 1.0 / float(quality); i <= 1.0; i += 1.0 / float(quality))
		{
			wei = 1.0;
			color += wei * texture2D(gm_BaseTexture, v_vTexcoord + vec2(cos(d), sin(d)) * radius * i);
			wei_total += wei;
		}
	}
	color /= wei_total;
	float dis = distance(v_vTexcoord, vec2(0.5, 0.5));
	color.rgb *= pow(1.0 - dis, 1.8 + motion);
    gl_FragColor = v_vColour * color;
}

