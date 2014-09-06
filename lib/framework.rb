
require 'ruzzer/version'
require 'ruzzer/console/parser_params'

module Framework
  class Ruzzer
    def initialize
      Framework::Console::ParserParams.new(ARGV)
      run
    end

    def run
      puts 'Running ....'
    end
  end
end
