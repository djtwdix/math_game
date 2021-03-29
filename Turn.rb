class Turn
  attr_accessor :play
  def play(player1, player2, turns)
    if (turns % 2 === 0) 
      player = player1
    else
      player = player2
    end
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{player}: What does #{num1} + #{num2} Equal?"
    print "> "
    answer = $stdin.gets.chomp
    if (answer === (num1 + num2).to_s)
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.lives -= 1
    end
    puts "#{player1.name}: #{player1.lives} #{player2.name}: #{player2.lives}"
    if (player1.lives > 0 && player2.lives > 0)
      puts "----- NEW TURN ------"
    else
      if (player1.lives > 0)
        puts "#{player1.name} wins with #{player1.lives} lives remaining"
      else
        puts "#{player2.name} wins with #{player2.lives} lives remaining"
      end
      puts "----- GAME OVER -----"
      puts "Good Bye!"
    end
  end
end