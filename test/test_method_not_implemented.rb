# encoding: UTF-8
# frozen_string_literal: true

require 'test-unit'
require 'method-not-implemented'

class MethodNotImplementedTest < Test::Unit::TestCase
  class Foo
    def bar
      method_not_implemented
    end
  end

  def test_method_not_implemented
    assert_raise(MethodNotImplemented) { Foo.new.bar }
  end
end
