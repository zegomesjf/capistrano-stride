# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/stride/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-stride"
  spec.version       = Capistrano::Stride::VERSION
  spec.author        = "Arsen Bespalov"
  spec.email         = "a@spadix.ru"
  spec.description   = %q{Notify to Stride about deployments}
  spec.summary       = %Q{Notifies in a Stride room about a new deployment showing the git log\nfor the latests commits inclided in the current deploy.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.2"
  spec.add_dependency "stride"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end