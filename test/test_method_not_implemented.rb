# encoding: UTF-8
# frozen_string_literal: true

require 'test-unit'
require 'method-not-implemented'

class MethodNotImplementedTest < Test::Unit::TestCase
  class Foo
    def bar
      method_not_implemented
    end

    class << self
      def baz
        method_not_implemented
      end
    end
  end

  def test_method_not_implemented_works_with_classes
    assert_raise(MethodNotImplemented) { Foo.new.bar }
  end

  def test_method_not_implemented_works_with_modules
    assert_raise(MethodNotImplemented) { Foo.baz }
  end
end
