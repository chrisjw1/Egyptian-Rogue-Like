Entity = require 'entity'
RegenAttribute = require 'regen_attribute'

class Player extends Entity
  new: () =>
    super()
    @energy = RegenAttribute(100,40)

  update: (dt) =>
    super()
    @energy\update(dt)

  move: (dx,dy) =>
    if @energy\spend(20)
      super(dx,dy)

return Player
