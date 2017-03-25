# encoding: UTF-8
# frozen_string_literal: true

class MethodNotImplemented < StandardError
  VERSION = '1.0.0'

  module Extension
    def method_not_implemented
      method  = caller_locations(1,1)[0].label
      message = case self
        when Class, Module
          "#{self.inspect}.#{method} (class or module method)"
        else
          "#{self.class.inspect}.#{method} (instance method)"
      end

      raise MethodNotImplemented, message
    end
  end
end

[Class, Module].each do |x|
  x.include MethodNotImplemented::Extension
  x.extend  MethodNotImplemented::Extension
end
