#include "include/transform.h"

void transfrom2d_look_at(transfrom2d_t* transform, const vec2f32_t* position, const vec2f32_t* target)
{
  vec2f32_t distance = vec2f32_sub(target, position);

  transform->rotation = atan2f(distance.y, distance.x);
}

mat3x3f32_t transform2d_to_mat3x3f32(const transfrom2d_t *transform)
{
  const f32_t c = cosf(transform->rotation);
  const f32_t s = sinf(transform->rotation);

  return(mat3x3f32_t){
    {
      c * transform->scale.x, -s * transform->scale.y, transform->translation.x,
      s * transform->scale.x, c * transform->scale.y,  transform->translation.y,
      0.0f,                     0.0f,                      1.0f
    }
  };
}
