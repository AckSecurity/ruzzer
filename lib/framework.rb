#!/usr/bin/env ruby

require 'framework/version'
require 'framework/ui/console/parser_params'

module Framework
  class Ruzzer
    def initialize; end

    def run(ui)
      case
        when ui == :console
          @options = Framework::Ui::Console::ParserParams.parse(ARGV)
      end

      puts "Running version #{Framework::VERSION} over this url: #{@options.url}"
    end
  end
end
