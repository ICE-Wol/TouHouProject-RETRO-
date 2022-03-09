//
// Simple passthrough fragment shader
//
uniform float time;
uniform sampler2D mask;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	float dist = length(v_vTexcoord - vec2(0.5, 0.5)) * 10.0;
	//vec2 dir = normalize(vec2(0.5, 0.5) - v_vTexcoord);
	float strenth = texture2D(mask, v_vTexcoord).r;
	vec4 col = vec4(0.8, 0.8, 0.99, 1) * strenth;
	gl_FragColor = col * texture2D( gm_BaseTexture, v_vTexcoord + (sin(dist - time) * 0.1 - 0.05) * strenth);
}
