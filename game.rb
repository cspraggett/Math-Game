class Game
  def display_question(player, num1, num2)
    puts "Player #{player}: What does #{num1} plus #{num2} equal?"
  end

  def wrong_answer(player)
    puts "Player #{player}: Seriously? No!"
  end
  
  def right_answer(player)
    puts "Player #{player}: YES! You are correct."
  end

  def show_score(p1Score, p2Score)
    puts "P1: #{p1Score}/3 vs P2: #{p2Score}/3"
  end

  def winner(player, score)
    puts "Player #{player} wins with a score of #{score}/3"
    puts '----- GAME OVER ------'
    puts 'Good Bye!'
  end 

  def getAnswer(player, num1, num2)
    display_question(player, num1, num2)
    gets.chomp
  end

  def updateCurrentPlayer(curr)
    (curr + 1) % 2
  end

  def play
    game = Game.new

players = [Player.new, Player.new]

currentPlayer = 0

loop do
  questions = Questions.new
  ans = game.getAnswer(currentPlayer + 1, questions.number1, questions.number2).to_i
  if !(ans == questions.answer)
    game.wrong_answer(currentPlayer + 1)
    players[currentPlayer].wrong_answer
  else
    game.right_answer(currentPlayer + 1)
  end
  break if players[currentPlayer].score == 0
  game.show_score(players[0].score, players[1].score)
  currentPlayer = self.updateCurrentPlayer(currentPlayer)
end

game.winner(self.updateCurrentPlayer(currentPlayer) + 1, players[updateCurrentPlayer(currentPlayer)].score)
  end

end

# g = Game.new
# puts g.getAnswer("Player 1", 3, 2)


