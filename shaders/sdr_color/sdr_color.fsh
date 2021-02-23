//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_vSpecialColor;

void main()
{
     vec4 newColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	 if(newColor.rgb == vec3(1, 0, 1)) {
		 newColor.rgb = u_vSpecialColor;
	 }
	 
	 gl_FragColor = newColor;
}
