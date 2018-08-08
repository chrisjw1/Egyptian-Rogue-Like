Entities = require 'entities'

class GameWorld
  new: () =>
    @width = 10
    @height = 10
    @entities = Entities()

  string_representation: () =>
    ret = ''
    for i=0,@height
      for j=0,@width
        ret ..= @entities\char_at(i,j)
      ret ..= '\n'
    return ret

return GameWorld
