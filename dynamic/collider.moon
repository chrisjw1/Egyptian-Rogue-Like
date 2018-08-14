
Position = require 'position'

class Collider
  new: (start_position) =>
    @position = start_position or Position()

  is_colliding: (other_collider) =>
    return false

return Collider
