highp mat4 translate(highp vec3 p) {

  //TODO: Construct a matrix, m, which translates all points so that p is at the origin.

  /* vec3 translatePoint(vec3 v, vec3 o) { */
    /* return v - o; */
  /* } */

  return mat4(1, 0, 0, 0,
              0, 1, 0, 0, 
              0, 0, 1, 0,
              -p.x, -p.y, -p.z, 1);
}

//Do not remove this line
#pragma glslify: export(translate)
