#!/usr/bin/env ruby

require 'framework/version'
require 'framework/ui/console/banner'
require 'framework/ui/console/parser_params'

module Framework
  class Ruzzer

    def initialize; end

    def run(ui)
      case
      when ui == :console
        @options = Framework::Ui::Console::ParserParams.parse
        run_console
      end
    end

    def run_console
      Framework::Ui::Console::Banner.print_ascii_art
      puts "#{@options[:url]}"
    end
  end
end
