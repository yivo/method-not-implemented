# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path("../lib/method-not-implemented", __FILE__)

Gem::Specification.new do |s|
  s.name            = "method-not-implemented"
  s.version         = MethodNotImplemented::VERSION
  s.author          = "Yaroslav Konoplov"
  s.email           = "eahome00@gmail.com"
  s.summary         = "Tweaks every Ruby object with `method_not_implemented`."
  s.description     = "This gem adds method `method_not_implemented` to every Ruby object. " \
                      "Invoking `method_not_implemented` in abstract method " \
                      "raises an exception if it hasn't been implemented."
  s.homepage        = "https://github.com/yivo/method-not-implemented"
  s.license         = "MIT"

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ["lib"]

  s.add_development_dependency "bundler",   "~> 1.7"
  s.add_development_dependency "rake",      "~> 12.0"
  s.add_development_dependency "test-unit", "~> 3.2"
end
