#!/usr/bin/env ruby

require 'optparse'
require 'ruzzer/version'

module Ruzzer
  class OptionParser
    attr_accessor :options

    def initialize(options = {:generate => nil})
      @options = options
      setup
    end

    def parse(args)
      args = args.dup
      parser.parse!(args)
      args
    end

    private

    def setup
      define_option('-g', '--generate [exp]') do |arg|
        options[:generate] = arg
      end

      define_option('-v', '--version') do
        puts Version.to_s
        exit
      end

    end

    def define_option(*options, &block)
      long_option = options.find { |option| option.start_with?('--') || option.start_with?('-')}
                        .split(' ')
                        .first

      description_lines = descriptions[long_option]

      parser.on(*options, *description_lines, &block)
    end

    def parser
      @parser ||= begin
        banner = "Usage: #{command_name} [options]\n\n"
        summary_width = 32 # Default
        indentation = ' ' * 2
        ::OptionParser.new(banner, summary_width, indentation)
      end
    end

    def command_name
      File.basename($PROGRAM_NAME)
    end

    def descriptions
      @descriptions ||= {
          '--generate' => [
              'Generate a fuzzer stream using [expression]'
          ],
          '-g' => [
              'Generate a fuzzer stream using [expression]'
          ],
          '-v' => [
              "Show #{command_name} version."
          ],
          '--version' => [
              "Show #{command_name} version."
          ]
      }
    end
  end
end