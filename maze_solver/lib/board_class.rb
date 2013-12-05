###CLASS BOARD


class Board

  ### Assumes wall_value does not equal "o" or "x."  That the maze starts on the left and ends on the right.  That there is only one open space for an entrance and an exit.

attr_reader :maze, :path_value, :open_value
attr_accessor :leading_x, :leading_y

  def initialize
    @maze = []
    @path_value = "o"
    @visited_value = "x"
    @open_value
    @leading_x
    @leading_y
  end

  def create_maze(file)
    open_file = File.open(file)
    array = open_file.readlines
    array.each_with_index do |string, index|
      array[index] = string.chop!.split("")
      @maze << array[index]

    end
      @maze = maze.transpose
  end

  def set_open(open_value)
    @open_value = open_value

  end

  def possible_positions
    [maze[leading_x-1][leading_y+1], maze[leading_x][leading_y+1], maze[leading_x+1][leading_y+1], maze[leading_x-1][leading_y], maze[leading_x+1][leading_y], maze[leading_x-1][leading_y-1], maze[leading_x][leading_y-1], maze[leading_x+1][leading_y-1]].select{|square| square.index > 0}

  end

  def find_left_entry
    maze[0].each_with_index do |value, index|
      return index if value == open_value
    end
  end

  def process
    @leading_x = 0
    @leading_y = self.find_left_entry
    @maze[leading_x][leading_y] = path_value
      return maze[-1][leading_y].index
     # until leading_x == maze.length-1
     #  case 
     #    when possible_positions.select{|square| square == open_value}.length == 1
          # possible_positions.each do|position|
          #   if position == open_value
          #     leading_x = position.index[0]
          #     leading_y = position.index[1]
          open_value
            # end
      #     end
      # end

    #end

  end


end











