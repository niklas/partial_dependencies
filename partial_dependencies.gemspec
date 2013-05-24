# -*- encoding: utf-8 -*-
require File.expand_path('../lib/partial_dependencies/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["mSALES GmbH", "George Shaw", "Niklas Hofer"]
  gem.email         = ["niklas+dev@lanpartei.de"]
  gem.description   = %q{Get a dependency graph of your Ruby on Rails views and partials}
  gem.summary       = %q{Get a dependency graph of your Ruby on Rails views and partials}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "partial_dependencies"
  gem.require_paths = ["lib"]
  gem.version       = PartialDependencies::VERSION
  gem.add_development_dependency "rspec", "~> 2.8.0"
end
