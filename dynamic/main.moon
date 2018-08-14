GameWorld = require 'gameWorld'
-- RectCollider = require 'rect_collider'
-- Position = require 'position'
-- Rectangle = require 'rectangle'
gw = GameWorld()

love.keypressed = (key) ->
	switch key
		when 'up'
			gw.player\move(0,-1)
		when 'down'
			gw.player\move(0,1)
		when 'left'
			gw.player\move(-1,0)
		when 'right'
			gw.player\move(1,0)

love.load = (arg) ->
	-- a = RectCollider(Rectangle(1,1),Position(0,0))
	-- b = RectCollider(Rectangle(1,1),Position(1,0))
	-- c = RectCollider(Rectangle(1,2),Position(1,-1))
	-- print(a\is_colliding(b))
	-- print(b\is_colliding(a))
	-- print(b\is_colliding(c))
	-- print(c\is_colliding(b))
	-- print(c\is_colliding(a))
	-- print(a\is_colliding(c))

love.update = (dt) ->
	gw\update(dt)

love.draw = ->
	love.graphics.print gw\string_representation(), 100, 100
