#!/usr/bin/env ruby

require 'ruzzer/version'
require 'ruzzer/ui/console/banner'
require 'ruzzer/ui/console/parser_params'

module Ruzzer
  class Framework
    def initialize; end

    def self.start(ui)
      case
      when ui == :console
        @options = Ruzzer::Ui::Console::ParserParams.parse
        run_console
      end
    end

    def self.run_console
      Ruzzer::Ui::Console::Banner.print_ascii_art
      puts "#{@options[:url]}"
    end
  end
end
