#!/usr/bin/env ruby

require 'optparse'
require 'ostruct'

module Framework
  module Ui
    module Console

      class ParserParams
        def self.parse(args)
          options = OpenStruct.new
          options.url = 'https://ruzzer.org'
          options.verbose = false

          opt_parser = OptionParser.new do |opts|
            opts.banner = "Usage: ruzzer.rb [options]"

            opts.separator ""
            opts.separator "Specific options:"

            opts.on("-u", "--url",
                    "Require the URL target") do |url|
              options.url = url
            end

            opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
              options.verbose = v
            end

            opts.on_tail("-h", "--help", "Show this message") do
              puts opts
              exit
            end

          end

          opt_parser.parse!(args)
          options
        end
      end

    end
  end
end