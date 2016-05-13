# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake/chef/version'

Gem::Specification.new do |spec|
  spec.name          = "rake-chef"
  spec.version       = Rake::Chef::VERSION
  spec.authors       = ["Brandon Raabe"]
  spec.email         = ["brandocorp@gmail.com"]

  spec.summary       = %q{Provide Rake tasks with Chef DSL}
  spec.description   = %q{Provide Rake tasks with Chef DSL}
  spec.homepage      = "https://github.com/brandocorp/rake-chef"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "chef", "~> 12.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
