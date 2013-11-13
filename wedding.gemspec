# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wedding/version'

Gem::Specification.new do |spec|
  spec.name          = "wedding"
  spec.version       = Wedding::VERSION
  spec.authors       = ["Jai Pandya"]
  spec.email         = ["jaipandya@gmail.com"]
  spec.description   = %q{What could be better than a gem for a wedding. Generates an invite for my wedding.}
  spec.summary       = %q{I created this gem for inviting friends to my wedding.}
  spec.homepage      = "http://preritajai.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'launchy', '2.3.0'
  spec.add_runtime_dependency 'require_all', '~> 1.3.2'
end
