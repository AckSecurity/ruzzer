#!/usr/bin/env ruby

require 'uri'

module Ruzzer
  module Net
    module Http

    class UriParse

      def self.parse(s_uri)
        uri = URI(s_uri)
      end
    end

    class URI::HTTP
      def params
        p = query.split("&").each {|po| po.split("=")}
        puts p.inspect
      end
    end

    end
  end
end