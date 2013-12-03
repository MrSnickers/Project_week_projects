### BOARD CLASS


class Game

attr_reader :board, :width, :height

def initialize(w, h)

@width = w
@height = h
@board = Array.new(width) {Array.new(height)}

width_counter = 0
height_counter = 0

  while width_counter < width do
    while height_counter < height do
      board[width_counter][height_counter] = Cell.new(width_counter, height_counter, self)
      height_counter += 1
    end
    height_counter = 0
    width_counter +=1
  end
end




end