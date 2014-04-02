# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ESPGem/version'

Gem::Specification.new do |spec|
  spec.name          = "ESPGem"
  spec.version       = ESPGem::VERSION
  spec.authors       = ["Alex Egan"]
  spec.email         = ["aegan@andrew.cmu.edu"]
  spec.summary       = %q{A basic gem to access ESPN's API}
  spec.description   = %q{This is a gem I am using to learn how to create gems.
                          I would suggest looking at https://github.com/rondale-sc/EspnRb
                          Which is a much better ESPN gem. That's more full featured. This is a leraning tool}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "net/http"
  spec.add_runtime_dependency "json"
end
