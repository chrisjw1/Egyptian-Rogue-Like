Position = require 'position'

class Entity
  new: () =>
    @position = Position()
    @char = 'y'

  char_repr: () =>
    return @char


return Entity
