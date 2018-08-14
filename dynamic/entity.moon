Position = require 'position'

class Entity
  new: () =>
    @position = Position()
    @char = 'y'

  char_repr: () =>
    return @char

  move: (dx,dy) =>
    @position.x += dx
    @position.y += dy

  update: (dt) =>



return Entity
