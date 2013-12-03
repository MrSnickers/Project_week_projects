### CELL CLASS


class Cell
  attr_accessor :alive
  attr_reader :location_x, :location_y, :game

def initialize(x,y, game)
  @alive = false
  @location_x = x
  @location_y = y
  @game = game
end


def neighbor_array
    x = @location_x
    y = @location_y
  [game.board[x-1][y-1], game.board[x-1][y], game.board[x-1][y+1], game.board[x][y-1], game.board[x][y+1], game.board[x+1][y-1], game.board[x+1][y], game.board[x+1][y+1]]
end

def live_neighbors
  neighbor_array.select {|cell| cell.alive == true}
end

def decide
  @alive = false if live_neighbors.count >3
  @alive = false if live_neighbors.count <1
  @alive = true if live_neighbors.count == 3
  end

end