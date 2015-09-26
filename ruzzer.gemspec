# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruzzer/version'

Gem::Specification.new do |spec|
  spec.name          = Ruzzer::Version.to_s
  spec.version       = "0.0.1"
  spec.authors       = ["Alejandro Ferrandiz Fonseca"]
  spec.email         = ["acksecurity@hotmail.com"]
  spec.summary       = %q{Fuzzer Framework on Ruby}
  spec.description   = %q{This gem generate stream to send into the target and monitor whether throw an exception}
  spec.homepage      = "http://gorums.github.io/ruzzer"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
