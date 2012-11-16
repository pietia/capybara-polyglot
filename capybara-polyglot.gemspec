# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'capybara/polyglot/version'

Gem::Specification.new do |s|
  s.name          = "capybara-polyglot"
  s.version       = Capybara::Polyglot::VERSION
  s.authors       = ["Piotr Gęga"]
  s.email         = ["pietia@appgrinder.pl"]
  s.homepage      = "https://github.com/pietia/capybara-polyglot"
  s.summary       = "TODO: summary"
  s.description   = "TODO: description"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'


  s.add_development_dependency "gem-release"
  s.add_development_dependency "rake"

  s.add_dependency "activesupport"
  s.add_dependency "capybara"
end
