# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruzzer/version'

Gem::Specification.new do |spec|
  spec.name          = "ruzzer"
  spec.version       = Ruzzer::VERSION
  spec.authors       = ["gorums"]
  spec.email         = ["acksecurity@hotmail.com"]
  spec.summary       = %q{Fuzzer tool dedicated to web pentest}
  spec.description   = %q{This tool tries to find vulnerability on web sites}
  spec.homepage      = "https://www.ruzzer.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
