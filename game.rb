require './turn'

class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = @p1
  end

  def start_game
    while @p1.lives != 0 && @p2.lives != 0
      turn = Turn.new(@current_player)
      turn.ask_question
      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
      puts "----- NEW TURN -----"
      if @current_player == @p1
        @current_player = @p2
      elsif @current_player == @p2
        @current_player = @p1
      end
    end
  end

  def end_game
    if @p1.lives == 0
      winner = @p2
    elsif @p2.lives == 0
      winner = @p1
    end
    
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end