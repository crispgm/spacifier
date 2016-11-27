# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spacifier/version'

Gem::Specification.new do |spec|
  spec.name          = "spacifier"
  spec.version       = Spacifier::VERSION
  spec.authors       = ["David Zhang"]
  spec.email         = ["crispgm@gmail.com"]
  spec.summary       = "Insert a space between a Chinese character and a western character"
  spec.description   = "Insert a space between a Chinese character and a western character"
  spec.homepage      = "https://github.com/crispgm/spacifier"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.2.5'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end