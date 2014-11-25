#!/usr/bin/env ruby

require 'ruzzer/version'

module Ruzzer
  module Ui
    module Console

      class Banner

        FILE_ASCII = 'lib/ruzzer/ui/console/resources/std_banner.ascii'

        def self.print_ascii_art
          if File.exists?(FILE_ASCII)
            File.open(FILE_ASCII, 'r') do |f|
              while line = f.gets
                puts line
              end
              puts "Version: #{VERSION}"
              puts ""
            end
          end
        end

        def self.get_ascii_art
          if File.exists?(FILE_ASCII)
            banner = ""
            File.open(FILE_ASCII, 'r') do |f|
              while line = f.gets
                banner << line
              end
              banner << "Version: #{VERSION}\n\n"
            end
            banner
          end
        end

      end

    end
  end
end