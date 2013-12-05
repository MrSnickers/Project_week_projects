require "../lib/cell_class.rb"
require "../lib/game_class.rb"
require 'debugger'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

describe "game of life" do
  it "If has no live neighbors live_neighbors.count is zero" do
    game = Game.new(8,8)
    expect(game.board[1][1].live_neighbors.count).to eq(0)
  end

  it "If it is alive and has no live neighbors it is no longer alive" do
    game = Game.new(8,8)
    game.board[1][1].alive = true
    game.board[1][1].decide
    expect(game.board[1][1].alive).to eq(false)
  end

    it "If it is not alive and has three live neighbors it becomes alive" do
    game = Game.new(8,8)
    game.board[1][1].alive = true
    game.board[1][2].alive = true
    game.board[2][1].alive = true
    game.board[2][2].decide

    expect(game.board[2][2].alive).to eq(true)
  end
  end

describe "Board" do
  it "Can create a board" do
    game = Game.new(8,8)
    expect(game.board).to_not be(nil)
  end

   it "contains cells in each index" do
    game = Game.new(8,8)
    expect(game.board[1][1]).to be_a(Cell)
  end

end




# The world is a two dimentional array of cell objects that have an x location that is the same as their array index and an alive status.  Each turn is the return of a new array.