# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "ruzzer"
  spec.version       = "0.0.1"
  spec.authors       = ["Alejandro Ferrandiz Fonseca"]
  spec.email         = ["acksecurity@hotmail.com"]
  spec.summary       = %q{Fuzzer Framework on Ruby}
  spec.description   = %q{This gem generate stream to send into the target and monitor whether throw an exception}
  spec.homepage      = "http://gorums.github.io/ruzzer"
  spec.license       = "MIT"

  spec.files         = ["lib/ruzzer.rb"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
