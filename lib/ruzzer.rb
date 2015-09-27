#!/usr/bin/env ruby

require 'ruzzer/cli/option_parser'

module Ruzzer

  def self.run(args = ARGV)
    option_parser.parse(args)

    puts generate option_parser.options[:generate] if option_parser.options[:generate] != nil

    puts 'Done.'
    true
  rescue  => error
    warn error.message
    false
  end

  def self.generate(exp)
    exp
  end

  def self.inject(payloads = [])

  end

  def self.monitor

  end

  def self.report

  end

  private

  def self.option_parser
    @option_parser ||= OptionParser.new
  end

end
