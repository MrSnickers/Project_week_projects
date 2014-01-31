### COMMAND LINE GAME OF LIFE APP 2.0

require "rainbow/ext/string"
require "./lib/cell_class.rb"
require "./lib/game_class.rb"


game = Game.new(20, 20)
game.randomize_live_cells(100)
puts "run? (y/n)"
input = gets.chomp.downcase
counter = 1
if input == "y"
  while true
    puts "\e[H\e[2J"
    game.print_board
    puts "Generation #{counter}"
    counter += 1
    game.call_all_cells
    game.tick
    sleep 0.1
  end
else
  puts "oh"
end