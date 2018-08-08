class Position
  new: (x,y) =>
    @x = x or 0
    @y = y  or 0

  at: (x,y) =>
    return x == @x and y == @y

return Position
