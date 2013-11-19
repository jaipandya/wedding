# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wedding/version'
require 'wedding/post_install_message'

Gem::Specification.new do |spec|
  spec.name          = "wedding"
  spec.version       = Wedding::VERSION
  spec.authors       = ["Jai Pandya"]
  spec.email         = ["jaipandya@gmail.com"]
  spec.description = <<-EOS
What could be better than a gem for a wedding. This gem generates an invite for my wedding.
Mostly made for fun, the gem is generic in nature that accepts a configuration object to
work on.
EOS
  spec.summary       = %q{I created this gem for inviting friends to my wedding.}
  spec.homepage      = "http://preritajai.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ['wedding']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  
  spec.post_install_message = Wedding.post_install_message

  spec.add_runtime_dependency 'launchy', '2.3.0'
  spec.add_runtime_dependency 'require_all', '~> 1.3.2'
  spec.add_runtime_dependency 'thor', '~> 0.18'

end
