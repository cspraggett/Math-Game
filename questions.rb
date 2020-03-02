class Questions
  attr_reader :number1, :number2

  def initialize
    @number1 = getNumber 
    @number2 = getNumber
  end

  def answer
    @number1 + @number2
  end
 
  def getNumber
    rand(20) + 1
  end
end
