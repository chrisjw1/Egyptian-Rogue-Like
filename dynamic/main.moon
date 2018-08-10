GameWorld = require 'gameWorld'

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

love.update = (dt) ->
	gw\update(dt)

love.draw = ->
	love.graphics.print gw\string_representation(), 100, 100
