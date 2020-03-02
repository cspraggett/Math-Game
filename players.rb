class Player
  attr_reader :score, :name
  
  def initialize()
    @score = 3
  end

  def wrong_answer
    @score -= 1
  end

end
