attribute vec3 position;
attribute vec4 tex_coords;
attribute vec3 normals;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 transform;

varying vec4 frag_tex_coords;
varying vec3 frag_pos;

void main()
{
	gl_Position = projection * view * transform * vec4(position, 1.0);
	frag_tex_coords = tex_coords;
	frag_pos = vec3(transform * vec4(position, 1.0));
}