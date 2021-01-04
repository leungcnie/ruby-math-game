class Player
  attr_accessor :lives, :name

  def initialize(lives, name)
    @lives = lives
    @name = name
  end

  def add_life
    if @lives < 3
      @lives += 1
    end
  end

  def minus_life
    if @lives > 0
      @lives -= 1
    end
  end

end