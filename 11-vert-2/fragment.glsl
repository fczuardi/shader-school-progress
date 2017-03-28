precision highp float;

varying vec4 fragPosition;

void main() {
  vec4 position = fragPosition;
  float pr = 0.5 + position.y;
  float pg = 0.5 - position.x;
  float pb = 0.5 + position.x;
  vec4 color = vec4(
    pr,
    pg - pr/2.0, 
    pb - pr/2.0,
    1.0);

  gl_FragColor = color;
}
