require './players'
require './questions'
require './game'

game = Game.new
questions = Questions.new
players = [Player.new, Player.new]

currentPlayer = 0

loop do
  ans = game.getAnswer(currentPlayer + 1, questions.number1, questions.number2).to_i
  if !(ans == questions.answer)
    game.wrong_answer(currentPlayer + 1)
    players[currentPlayer].wrong_answer
  else
    game.right_answer(currentPlayer + 1)
  end
  break if players[currentPlayer].score == 0
  game.show_score(players[0].score, players[1].score)
  currentPlayer = (currentPlayer + 1) % 2
end

game.winner(((currentPlayer + 1) %  2) + 1, players[(currentPlayer + 1) % 2].score)



