import insert from table
Entity = require 'entity'

class Entities
  new: () =>
    @raw_entities = {}
    @add(Entity())

  add: (entity) =>
    insert(@raw_entities,entity)

  entity_at: (x,y) =>
    for entity in *@raw_entities
      if entity.position\at(x,y)
        return entity
    return nil

  char_at: (x,y) =>
    entity = @entity_at(x,y)
    if entity
      return entity\char_repr()
    else
      return 'x'

return Entities
