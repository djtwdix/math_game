require "./Player.rb"
require "./Game.rb"
require "./Turn.rb"

alex = Player.new("Alex")
daniel = Player.new("Daniel")

game1 = Game.new(alex, daniel)

game1.play

