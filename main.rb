# variables - player_1 and player_2, lives, number_1 and number_2

require_relative 'players'
require_relative 'question'

print "Player 1 name: "
player1_name = gets.chomp
print "Player 2 name: "
player2_name = gets.chomp

player1 = Players.new(player1_name)
player2 = Players.new(player2_name)

counter = 0

while (player1.lives > 0 && player2.lives > 0 ) 
  if (counter % 2 == 0)
    player = player1
  else
    player = player2
  end
  puts "player1: #{player1.lives}/3 lives vs player2: #{player2.lives}/3 lives"

  question = Question.new()
  puts "#{player.name}: #{question.show}"
  answer = gets.chomp.to_i
  if (answer == question.answer)
    puts "you are correct! - #{player.name} #{player.lives}/3 lives"
  else
    player.lose_life(player.lives)
    puts "sorry, good luck next time - #{player.name} #{player.lives}/3 lives"      
  end
  puts"---next player turn---"

  if player1.lives == 0
    puts "==>#{player2.name} wins with #{player2.lives}/3 lives"
    puts "----Game Over!----"
  elsif player2.lives == 0
    puts "==>#{player1.name} wins with #{player1.lives}/3 lives"
    puts "----Game Over!----"
  end
  counter += 1
  
end