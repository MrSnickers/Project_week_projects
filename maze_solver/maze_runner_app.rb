#### MAZE RUNNER APP

require "awesome_print"
require "rainbow"
require "./lib/board_class"


    board = Board.new
    board.create_maze("./data/maze.rb")
    board.set_open(" ")
    board.set_left_start_point
    board.process_right
