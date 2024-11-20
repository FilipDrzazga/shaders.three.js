uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;

void main()
{
  gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}


// int for integers
// float for floating point numbers
// bool for boolean values
// vec2 for 2D vectors
// vec3 for 3D vectors
// vec4 for 4D vectors

// vec3 foo = vec3(1.0, 0.0, 0.0); can be use as RGB color or XYZ coordinates
// vec2 foo = vec2(1.0, 0.0); can be use as UV coordinates or XY coordinates
// vec4 foo = vec4(1.0, 0.0, 0.0, 1.0); can be use as RGBA color or XYZW coordinates

// We can also mix vec2, vec3, vec4 together like this: vec4(vec3(vec2(1.0, 0.0), 0.0), 1.0); which is equivalent to vec4(1.0, 0.0, 0.0, 1.0);
// or vec4(vec2(1.0, 0.0), 0.0, 1.0); which is equivalent to vec4(1.0, 0.0, 0.0, 1.0);

// function always return a value of the same type as the input value type 
// if function doesn't return a value, it should be declared as void
// parameters can be of any type, but the return value must be of the same type as the function name, for example:
// vec3 foo(float bar) { return vec3(bar, 0.0, 0.0); }