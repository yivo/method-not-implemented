## Adds `method_not_implemented` to every class and module in Ruby.

[![Gem Version](https://badge.fury.io/rb/method-not-implemented.svg)](https://badge.fury.io/rb/method-not-implemented)
[![Build Status](https://travis-ci.org/yivo/method-not-implemented.svg?branch=master)](https://travis-ci.org/yivo/method-not-implemented)

## About
This gem adds `method_not_implemented` to every class and module in Ruby.
```ruby
class SomeBaseClass
  def some_method
    method_not_implemented
  end
end

class SomeDerivedClass < SomeBaseClass
  
end
```

If `some_method` will be invoked on instance of `SomeDerivedClass` `MethodNotImplemented: SomeDerivedClass.some_method (instance method)` will be raised.

## Installing gem
Add to your Gemfile:
```ruby
gem 'method-not-implemented', '~> 1.0'
```

## Running Tests
Install bundler:
```bash
gem install bundler
```

Install dependencies:
```bash
cd method-not-implemented && bundle
```

Run tests:
```bash
cd method-not-implemented && bundle exec rake test
```
