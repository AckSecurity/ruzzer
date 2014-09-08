#!/usr/bin/env ruby

module Ruzzer
  module Ui
    module Console

      class Banner

        FILE_ASCII = 'lib/ruzzer/ui/console/resources/ruzzer.ascii'

        def self.print_ascii_art
          if File.exists?(FILE_ASCII)
            File.open(FILE_ASCII, 'r') do |f|
              while line = f.gets
                puts line
              end
            end
          end
        end

        def self.ascii_art
          if File.exists?(FILE_ASCII)
            banner = ""
            File.open(FILE_ASCII, 'r') do |f|
              while line = f.gets
                banner << line
              end
            end
            banner
          end
        end

      end

    end
  end
end