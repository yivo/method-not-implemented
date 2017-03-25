# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path('../lib/method-not-implemented', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'method-not-implemented'
  s.version         = MethodNotImplemented::VERSION
  s.author          = 'Yaroslav Konoplov'
  s.email           = 'eahome00@gmail.com'
  s.summary         = 'Adds method_not_implemented to every class and module in Ruby.'
  s.description     = 'Adds method_not_implemented to every class and module in Ruby.'
  s.homepage        = 'https://github.com/yivo/method-not-implemented'
  s.license         = 'MIT'

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'test-unit', '~> 3.2'
end
