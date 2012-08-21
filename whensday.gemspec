# -*- encoding: utf-8 -*-
require File.expand_path('../lib/whensday/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hemnet"]
  gem.email         = ["info@hemnet.se"]
  gem.description   = %q{A gem for the whensdays.}
  gem.summary       = %q{Adds methods to date for next wednesday and so on.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "whensday"
  gem.require_paths = ["lib"]
  gem.version       = Whensday::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
