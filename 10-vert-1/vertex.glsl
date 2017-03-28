precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  //TODO: rotate position by theta radians about the origin

  vec3 oldPosition = vec3(position, 0.0);
  // credit https://github.com/stackgl/gl-vec3/blob/507480fa57ba7c5fb70679cf531175a52c48cf53/rotateZ.js
  vec3 newPosition = vec3(position.x * cos(theta) - position.y * sin(theta), position.x * sin(theta) + position.y * cos(theta), 0.0);

  gl_Position = vec4(newPosition, 1.0);
}
