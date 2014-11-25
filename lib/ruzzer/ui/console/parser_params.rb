#!/usr/bin/env ruby

require 'optparse'
require 'ostruct'

module Ruzzer
  module Ui
    module Console

      class ParserParams
        def self.parse

          options = Hash.new
          options[:verbose] = false
          options[:url] = ""

          begin
            opt_parser = OptionParser.new do |opts|
              @opts = opts
              opts.banner = usage

              opts.separator ""
              opts.separator " Specific options:"
              opts.separator ""

              opts.on("-u", "--url URL", "Require the URL target") do |url|
                options[:url] = url
              end

              opts.on("-v", "--verbose", "Run verbosely") do |verbose|
                options[:verbose] = verbose
              end

              opts.on_tail("-h", "--help", "Show this message") do
                puts opts
                exit
              end
            end.parse!

            options

          rescue OptionParser::ParseError => e
            puts help
            puts '[-]'
            puts '[-] Invalid command line option provided. Please run :ruby ruzzer --help'
            puts '[-]'

            exit 1
          end

        end

        def self.usage
          banner = Ruzzer::Ui::Console::Banner.get_ascii_art
          banner << "[+] \n"
          banner << "[+] Usage: ruzzer.rb [options]\n"
          banner << "[+] \n"
        end

        def self.help
          banner = @opts.help
        end
      end

    end
  end
end