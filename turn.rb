require './question'

class Turn
  def initialize(player)
    @player = player
  end

  def ask_question
    q = Question.new(@player.name)
    puts q.question
    response = $stdin.gets.chomp.to_i
    if response == q.answer
      puts "#{@player.name}: YES! You are correct."
      @player.add_life
    else
      puts "#{@player.name}: Seriously? No!"
      @player.minus_life
    end
  end
end