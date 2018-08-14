Entities = require 'entities'
Player = require 'player'
CollisionSimulation = require 'collision_simulation'

class GameWorld
  new: () =>
    @width = 10
    @height = 10
    @entities = Entities()
    @player = Player()
    @entities\add(@player)
    @collision_simulation = CollisionSimulation()

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
