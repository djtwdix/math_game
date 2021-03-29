class Game
  def initialize(player1, player2)
    @turns = 0
    @player1 = player1
    @player2 = player2
    puts "#{player1} and #{player2}"
  end
  def play
      while (@player1.lives > 0 && @player2.lives > 0)
        current = Turn.new
        current.play(@player1, @player2, @turns)
        @turns += 1
      end
  end
end