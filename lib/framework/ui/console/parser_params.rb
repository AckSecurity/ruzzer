#!/usr/bin/env ruby

require 'optparse'

module Framework
  module Console
    class ParserParams
      def initialize(args)
        args.each { |param| puts "param: #{param}" }
      end
    end
  end
end