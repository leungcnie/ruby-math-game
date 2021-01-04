require './player'
require './question'
require './turn'
require './game'

p1 = Player.new(3, "Player 1")
p2 = Player.new(3, "Player 2")

game = Game.new(p1, p2)
game.start_game
game.end_game