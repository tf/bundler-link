# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler/link/version'

Gem::Specification.new do |spec|
  spec.name          = "bundler-link"
  spec.version       = Bundler::Link::VERSION
  spec.authors       = ["Tim Fischbach"]
  spec.email         = ["tfischbach@codevise.de"]

  spec.summary       = %q{A bundler command to quickly use a gem from a local path.}
  spec.homepage      = "https://github.com/tf/bundler-link"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
