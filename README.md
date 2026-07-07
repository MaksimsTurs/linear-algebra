# linear-algebra
Simple c library for Vector, Matrix and Transform math.

## Documentation
Run following command in you terminal
```c
make
```
this make script will compile static library, after compilation copy header files from `include` directory and library file from `lib` directory into you project directory, then by compiling link you'r project with the library.

Here a example how you can use a library.
```c
#include "include/vector.h"

int main()
{
    {
        vec2f32_t vec_a = {10.0f, 20.0f};
        vec2f32_t vec_b = {20.0f, 25.0f};
        // Values that are equal or bigger than 64 bits must be passed as const reference.
        vec2f32_t vec_ab = vec2f32_add(&vec_a, &vec_b);
    }

    {
        vec2i16_t vec_a = {10, 20};
        vec2i16_t vec_b = {20, 25};
        // Values that are smaller than 64 bits must be passed as value.
        vec2i16_t vec_ab = vec2f32_add(vec_a, vec_b);
    }

    return 0;
}
```
