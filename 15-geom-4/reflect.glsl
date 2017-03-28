highp mat4 reflection(highp vec3 n) {

  //TODO: Return a matrix that reflects all points about the plane passing through the origin with normal n

  // transformation rows
  /* vec4 r1 = vec4(1, 0, 0, 0); */
  /* vec4 r2 = vec4(0, 1, 0, 0); */
  /* vec4 r3 = vec4(0, 0, 1, 0); */
  /* vec4 r4 = vec4(0, 0, 0, 1); */

// transformation * p = reflecPoint(p, axis)
//
//  vec3 reflectPoint(vec3 p, vec3 n) {
//   return p - 2.0 * dot(n, p) * n / dot(n, n);
// }

// https://en.wikipedia.org/wiki/Transformation_matrix
// http://www.useragentman.com/blog/2011/01/07/css3-matrix-transform-for-the-mathematically-challenged/

  n = normalize(n);
  vec4 r1 = vec4(1.0 - 2.0 * n.x * n.x,     - 2.0 * n.y * n.x,     - 2.0 * n.z * n.x, 0);
  vec4 r2 = vec4(    - 2.0 * n.x * n.y, 1.0 - 2.0 * n.y * n.y,     - 2.0 * n.z * n.y, 0);
  vec4 r3 = vec4(    - 2.0 * n.x * n.z,     - 2.0 * n.y * n.z, 1.0 - 2.0 * n.z * n.z, 0);
  vec4 r4 = vec4(                    0,                     0,                     0, 1);
  mat4 transformation = mat4(r1.x, r2.x, r3.x, r4.x,
                             r1.y, r2.y, r3.y, r4.y,
                             r1.z, r2.z, r3.z, r4.z,
                             r1.w, r2.w, r3.w, r4.w);

  return transformation;
}

#pragma glslify: export(reflection)
