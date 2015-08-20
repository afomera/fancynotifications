# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fancynotifications/version'

Gem::Specification.new do |spec|
  spec.name          = "fancynotifications"
  spec.version       = Fancynotifications::VERSION
  spec.authors       = ["Andrew Fomera"]
  spec.email         = ["andrew@zerlex.net"]

  spec.summary       = "Fancy Notifications for your Flash Messages"
  spec.description   = "Fancy Notifications adds nice flash Notifications for your rails applications"
  spec.homepage      = "https://github.com/king601/fancynotifications"

  spec.add_runtime_dependency 'sass', '>= 3.3.0'
  spec.add_runtime_dependency 'font-awesome-rails'
  # Dev Dependencies
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
