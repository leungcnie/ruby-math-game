require './player'
require './question'
require './turn'

p1 = Player.new(3)
p2 = Player.new(0)

while p1.score != 0 && p2.score != 0

end

if p1.score == 0
  winner = 'Player 2'
  score = p2.score
elsif p2.score == 0
  winner = 'Player 1'
  score = p1.score
end

puts "#{winner} wins with a score of #{score}/3"
puts "----- GAME OVER -----"
puts "Good bye!"