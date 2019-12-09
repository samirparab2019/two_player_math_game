# variables - player_1 and player_2, lives, number_1 and number_2

require_relative 'players'
require_relative 'question'

print "Player 1 name: "
player1_name = gets.chomp
print "Player 2 name: "
player2_name = gets.chomp

player1 = Players.new(player1_name)
player2 = Players.new(player2_name)

while (player1.lives > 0 && player2.lives > 0 ) do  
  question = Question.new()
  puts "#{player1.name}: #{question.show}"
  answer = gets.chomp.to_i
  if (answer == question.answer)
    puts "you are correct! #{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  else
    player1.lives -= 1
    puts "sorry, good luck next time #{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  end

  question = Question.new()
  puts "#{player2.name}: #{question.show}"
  answer = gets.chomp.to_i
  if (answer == question.answer)
    puts "you are correct! #{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
    if (player1.lives > 0 && player2.lives > 0) 
      puts "----new turn----"
    end
  else
    player2.lives -= 1
    puts "sorry, good luck next time #{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
    if (player1.lives > 0 && player2.lives > 0) 
      puts "----new turn----"
    end
  end

  if player1.lives == 0
    puts "==>#{player2.name} wins with #{player2.lives}/3 lives"
    puts "----Game Over!----"
  elsif player2.lives == 0
    puts "==>#{player2.name} wins with #{player2.lives}/3 lives"
    puts "----Game Over!----"
  end
end