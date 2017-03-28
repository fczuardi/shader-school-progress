highp mat4 scale(highp vec3 p) {

  //TODO: Return a matrix that scales each axis about the origin by a factor of p.x/p.y/p.z

  /* vec3 scaleVector(vec3 v, vec3 s) { */
    /* return s * v; */
  /* } */
  return mat4(p.x, 0, 0, 0,
              0, p.y, 0, 0, 
              0, 0, p.z, 0,
              0, 0, 0, 1);
}

#pragma glslify: export(scale)
