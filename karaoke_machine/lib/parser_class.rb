### TIME SHIFT

class Parser

  attr_reader :open_file, :array

  def initialize(file)
    @open_file = File.open(file)
    @array = open_file.readlines
    
  end


end

