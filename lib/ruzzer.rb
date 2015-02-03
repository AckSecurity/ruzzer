#!/usr/bin/env ruby

require 'ruzzer/version'
require 'ruzzer/ui/console/banner'
require 'ruzzer/ui/console/parser_params'
require 'ruzzer/net/http/uri_parse'

module Ruzzer
  class Framework
    def initialize; end

    def self.start(ui)
      case
      when ui == :console
        @options = Ruzzer::Ui::Console::ParserParams.parse
        if @options[:url] == nil
          usage = Ruzzer::Ui::Console::ParserParams.help
          puts usage
        else
          run_console
        end
      end
    end

    def self.run_console
      Ruzzer::Ui::Console::Banner.print_ascii_art

      url = @options[:url]
      uri = Ruzzer::Net::Http::UriParse.parse(url)
      puts uri.host
      puts uri.path
      puts uri.query
      puts uri.scheme
      puts uri.fragment
      puts uri.params
    end
  end
end
