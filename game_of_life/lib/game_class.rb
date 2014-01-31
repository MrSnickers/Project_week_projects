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

  def randomize_live_cells(cell_count)
    cell_count.times do
      current_cell = board[rand(0...width)][rand(0...height)]
      current_cell.alive = true
      current_cell.age = 1
    end
  end

  def call_all_cells
    width_counter = 0
    height_counter = 0

    while width_counter < width do
      while height_counter < height do
        board[width_counter][height_counter].decide
        height_counter += 1
      end
      height_counter = 0
      width_counter +=1
    end
  end

  def tick
    width_counter = 0
    height_counter = 0

    while width_counter < width do
      while height_counter < height do
        board[width_counter][height_counter].alive = board[width_counter][height_counter].stay_alive
        height_counter += 1
      end
      height_counter = 0
      width_counter +=1
    end
  end

  def make_color(age)
    red_color = 0
    green_color = 0
    blue_color = 0

    if age == 1
      red_color = 255
    elsif age < 5
      red_color = 255 - age * 51
    else
      red_color = 0
    end
    if age == 1
      blue_color = 255
    elsif age < 5
      blue_color = 255 -(age * 51)
    else
      blue_color = 0
    end
    if age == 1
      green_color = 0
    elsif age < 5
      green_color = age * 51
    else
      green_color = 255
    end
    [red_color, green_color, blue_color]
  end

  def print_board
    width_counter = 0
    height_counter = 0
    while width_counter < width do
      while height_counter < height do
        color_array = make_color(board[width_counter][height_counter].age)
        red_color = color_array[0]
        green_color = color_array[1]
        blue_color = color_array[2]
        if board[width_counter][height_counter].age == 0
          print "   ".color(0,0,0)
        else
          print " O ".color(red_color, green_color, blue_color)
        end
        height_counter += 1
      end
      height_counter = 0
      width_counter += 1
      print "\n"
    end
  end


end