precision highp float;

attribute vec3 position;

uniform mat4 model, view, projection;

void main() {

  //TODO: Apply the model-view-projection matrix to `position`
  
  vec4 p = vec4(position, 1);
  gl_Position = projection * view * model * p;
}
