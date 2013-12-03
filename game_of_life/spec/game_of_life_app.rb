#### GAME OF LIFE APP

require "./lib/cell_class.rb"
require "./lib/game_class.rb"


width_counter = 0
height_counter = 0


board = Array.new(width) {Array.new(height)}

  while width_counter < width do
    while height_counter < height do
      board[width_counter, height_counter] = Cell.new(width_counter, height_counter)
      height_counter += 1
    end
    height_counter = 0
    width_counter +=1
  end