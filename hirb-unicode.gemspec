# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hirb/unicode/version"

Gem::Specification.new do |s|
  s.name        = "hirb-unicode"
  s.version     = Hirb::Unicode::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["miaout17"]
  s.email       = ["miaout17 at gmail dot com"]
  s.homepage    = ""
  s.summary     = %q{Unicode support for hirb}
  s.description = %q{Unicode support for hirb}

  s.rubyforge_project = "hirb-unicode"

  s.add_dependency 'hirb', '~> 0.5'
  s.add_dependency 'unicode-display_width', '~> 0.1.1'
  # Use the same test utility as `hirb`
  s.add_development_dependency 'bacon', '>= 1.1.0'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'mocha-on-bacon'
  s.add_development_dependency 'bacon-bits'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
