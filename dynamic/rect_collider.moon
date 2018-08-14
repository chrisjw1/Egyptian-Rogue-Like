Collider = require 'collider'
Position = require 'position'
Rectangle = require 'rectangle'

class RectCollider extends Collider
  new: (rectangle,start_position) =>
    @rectangle = rectangle or Rectangle()
    @position = start_position or Position()

-- TODO handle all collider types (if applicable)
  is_colliding: (other_collider) =>
    if @rectangle.width == 0 or @rectangle.height == 0
      return false
    top_left_point = @position
    top_right_point = Position(@position.x + @rectangle.width-1,@position.y)
    bottom_left_point = Position(@position.x, @position.y+@rectangle.height-1)
    bottom_right_point = Position(@position.x+@rectangle.width-1,@position.y+@rectangle.height-1)
    return other_collider\is_position_inside(top_left_point) or other_collider\is_position_inside(top_right_point) or other_collider\is_position_inside(bottom_left_point) or other_collider\is_position_inside(bottom_right_point)

  is_position_inside: (position) =>
    return position.x >= @position.x and position.x < (@position.x + @rectangle.width) and position.x >= @position.y and position.y < (@position.y + @rectangle.height)

return RectCollider
