GameWorld = require 'gameWorld'

gw = GameWorld()

love.load = (arg) ->

love.update = (dt) ->

love.draw = ->
	love.graphics.print gw\string_representation(), 100, 100
