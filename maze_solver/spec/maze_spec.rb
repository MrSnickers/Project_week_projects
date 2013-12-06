#### SPEC FOR MAZE SOLVER

require "matrix"
require "debugger"
require "../lib/board_class.rb"

describe "Board" do
  it "should make a maze board" do
    board = Board.new
    board.create_maze("../lib/maze.rb")

    expect(board.maze).to be_a(Array)
  end

  it "the board should be populated" do
    board = Board.new
    board.create_maze("../lib/maze.rb")

    expect(board.maze[0][0]).to_not be(nil)
  end

  it "the board should be populated" do
    board = Board.new
    board.create_maze("../lib/maze.rb")

    expect(board.maze[0][0]).to be_a_kind_of(String)
  end  

  # it "the board should be populated" do
  #   board = Board.new
  #   board.create_maze("../lib/maze.rb")

  #   expect(board.maze[0][0]).to be_a_kind_of(String)
  # end

  it "should have an entrance on the left side" do
    board = Board.new
    board.create_maze("../lib/maze.rb")

    expect(board.maze[0].select{|item| item == " "}.size).to eq(1)
  end 

 it "should return the index of the entry point" do
    board = Board.new
    board.create_maze("../lib/maze.rb")
    board.set_open(" ")

    expect(board.find_left_entry).to be_a_kind_of(Integer)
  end

 it "should set the index of the leading edge to be the same as the entry point" do
    board = Board.new
    board.create_maze("../lib/maze.rb")
    board.set_open(" ")
    board.stub (:find_left_entry).and_return(2)

    expect(board.set_left_start_point.leading_y).to eq(2)
  end

  # it "should know that it is done when it reaches the end" do

  #   expect(board.process).to eq("o")
  # end

end