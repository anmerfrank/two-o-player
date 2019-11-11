require "./class-player.rb"
require "./class-questions.rb"

  puts "---- Welcome to THE GAME! ----"


  print "Player 1, enter your name:"
  player1_name = gets.chomp
  print "Player 2, enter your name:"
  player2_name = gets.chomp

  player1 = Players.new(player1_name)
  player2 = Players.new(player2_name)


  current_player = 1

  while (player1.alive? && player2.alive?) do 
   player = (current_player == 1) ? player1 : player2

    question = Questions.new()

    puts "--- New Round! ---"
  
    puts "#{player.name}: #{question.question}"

    answer = gets.chomp.to_i

    if answer == question.answer
      puts "That's correct!"
      puts "#{player1.name} has #{player1.lives}/3 lives, and #{player2.name} has #{player2.lives}/3 lives."
    else
      player.lives -= 1
      puts "Incorrect answer!"
      puts "#{player1.name} has #{player1.lives}/3 lives, and #{player2.name} has #{player2.lives}/3 lives."
    end

    current_player = (current_player + 1) % 2
  end
    
  if !player1.alive? || !player2.alive?

    puts "---- Game Over! Goodbye! ----"
  end
