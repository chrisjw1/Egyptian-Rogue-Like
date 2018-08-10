Entities = require 'entities'
Player = require 'player'

class GameWorld
  new: () =>
    @width = 10
    @height = 10
    @entities = Entities()
    @player = Player()
    @entities\add(@player)

  string_representation: () =>
    ret = ''
    for i=0,@player.energy.current / 10
      ret ..= '='
    ret ..= '\n'
    for j=0,@height
      for i=0,@width
        ret ..= @entities\char_at(i,j)
      ret ..= '\n'
    return ret

  update: (dt) =>
    @entities\update(dt)

return GameWorld
