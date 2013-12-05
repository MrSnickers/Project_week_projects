### SUBTITILE SHIFT APP


require ."/lib/parser_class.rb"
require "optparse"


options = {sub, add}

OptionParser.new do |opts|
  opts.banner = "Usage :example.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
end.parse!


puts "What file would you like to shift?"