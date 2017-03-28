highp mat4 rotation(highp vec3 n, highp float theta) {

  //TODO: Using Rodrigues' formula, find a matrix which performs a rotation about the axis n by theta radians


  n = normalize(n);
  float L = n.x;
  float M = n.y;
  float N = n.z;

  // https://en.wikipedia.org/wiki/Transformation_matrix#Rotation_2
  vec3 t1 = vec3(L * L * (1.0 - cos(theta)) +     cos(theta), M * L * (1.0 - cos(theta)) - N * sin(theta), N * L * (1.0 - cos(theta)) + M * sin(theta) );
  vec3 t2 = vec3(L * M * (1.0 - cos(theta)) + N * sin(theta), M * M * (1.0 - cos(theta)) +     cos(theta), N * M * (1.0 - cos(theta)) - L * sin(theta) );
  vec3 t3 = vec3(L * N * (1.0 - cos(theta)) - M * sin(theta), M * N * (1.0 - cos(theta)) + L * sin(theta), N * N * (1.0 - cos(theta)) +     cos(theta) );

  return mat4(t1.x, t2.x, t3.x, 0,
              t1.y, t2.y, t3.y, 0, 
              t1.z, t2.z, t3.z, 0,
                 0,    0,    0, 1);
}

#pragma glslify: export(rotation)
