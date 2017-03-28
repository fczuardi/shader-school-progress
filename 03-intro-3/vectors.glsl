highp vec2 func(highp vec2 a, highp vec2 b) {

  //TODO: Implement the exercise here

    highp vec2 angle = normalize(length(b) * a + length(a) * b);
    return vec2(angle.x,angle.y);
}

//Do not change this line
#pragma glslify: export(func)
