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
          options[:url] = "https://ruzzer.org"

          begin
            opt_parser = OptionParser.new do |opts|
              opts.banner = usage

              opts.separator ""
              opts.separator "[*] Specific options:"
              opts.separator ""

              opts.on("-u", "--url URL", "Require the URL target") do |url|
                options[:url] = url
              end

              opts.on("-v", "--[no-]verbose", "Run verbosely") do |verbose|
                options[:verbose] = verbose
              end

              opts.on_tail("-h", "--help", "Show this message") do
                puts opts
                exit
              end
            end.parse!

            options

          rescue OptionParser::InvalidOption => e
            puts 'Invalid command line option provided. Please run ruzzer --help'
            exit 1
          end

        end

        def self.usage
          banner = Ruzzer::Ui::Console::Banner.ascii_art
          banner << "\n"
          banner << "Usage: ruzzer.rb [options]"
        end
      end

    end
  end
end