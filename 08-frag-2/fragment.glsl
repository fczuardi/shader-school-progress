precision mediump float;

void main() {

  //TODO: Replace this with a function that draws a checkerboard
  vec4 white = vec4(1.0, 1.0, 1.0, 1.0);
  vec2 coord = gl_FragCoord.xy;
  vec2 ptile = step(0.5, fract(0.5 * coord / 16.0 ));

  if (ptile.x == ptile.y) {
    gl_FragColor = white;
  } else {
      discard;
  }
}
