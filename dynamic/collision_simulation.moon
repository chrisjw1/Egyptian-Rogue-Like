-- from table import insert
RectCollider = require 'rect_collider'

class CollisionSimulation
  class Sector
    new: () =>
      self.entities = {}

  new: () =>
    @sector_size = 10
    @world_size = 20
    @sectors = {{Sector() for i=0,@world_size/@sector_size } for j=0,@world_size/@sector_size}

  getSector: (position) =>
    return 

  move: (entity,dx,dy) =>
