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

  it "the board should be populated" do
    board = Board.new
    board.create_maze("../lib/maze.rb")

    expect(board.maze[0][0]).to be_a_kind_of(String)
  end

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

  it "should know that it is done when it reaches the end" do
    board = Board.new
    board.create_maze("../lib/shortest_maze.rb")
    board.set_open(" ")

    expect(board.process).to eq("o")
  end

end