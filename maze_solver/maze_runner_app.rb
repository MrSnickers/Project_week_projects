#### MAZE RUNNER APP

require "awesome_print"
require "rainbow"
require "./lib/board_class"


board = Board.new
board.create_maze("./data/trap_maze.rb")
board.set_open(" ")
board.set_left_start_point
board.process_right


# board = Board.new
# board.create_maze("./data/trap_maze.rb")
# board.set_open(" ")
# board.set_left_start_point
# board.move_to_first_open_position
# board.move_to_first_open_position
# board.move_to_first_open_position
# board.move_to_first_open_position

# board.print_board