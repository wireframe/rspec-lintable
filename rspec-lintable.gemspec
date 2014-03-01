# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/lintable/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-lintable"
  spec.version       = Rspec::Lintable::VERSION
  spec.authors       = ["Ryan Sonnek"]
  spec.email         = ["ryan@codecrate.com"]
  spec.summary       = %q{RSpec matcher for linting javascript responses}
  spec.description   = %q{RSpec helper that asserts javascript responses are valid}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rspec'
  spec.add_dependency 'jshintrb'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
