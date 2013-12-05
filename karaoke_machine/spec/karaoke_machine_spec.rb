### TIME SHIFT SPEC

require "../lib/parser_class.rb"

describe "time shift" do
  it "should create a new parser" do
    parse = Parser.new("../data/subtitle.srt")

    expect(parse).to be_a_kind_of(Parser)
  end

  it "should contain the given file" do
    parse = Parser.new("../data/subtitle.srt")

    expect(parse.open_file).to_not eq(nil)
  end
  it "should be initialized with an array" do
    parse = Parser.new("../data/subtitle.srt")

    expect(parse.array).to be_a_kind_of(Array)
  end


end