# Regexp.build()

## About

Best of Ruby Quiz, Chapter 6

This quiz is to build a library that adds a class method called build( ) to Regexp and that should accept a variable number of arguments, which can include Integers and Ranges of Integers. Have build( ) return a Regexp object that will match only Integers in the set of passed arguments.

Here are some examples of possible usage:

```ruby
lucky = Regexp.build(3, 7)
"7"  =~ lucky     # => true
"13" =~ lucky     # => false
"3"  =~ lucky     # => true

month = Regexp.build(1..12)
"0" =~ month      # => false
"1" =~ month      # => true
"12" =~ month     # => true

day = Regexp.build(1..31)
"6"    =~ day     # => true
"16"   =~ day     # => true
"Tues" =~ day     # => false

# ...
```

## Requirements

Ruby 2.2.2

## Notes

## Usage

run `bundle install`

## Understanding the Question

## Points of Interest

# Review

## License

This code is released under the [MIT License](http://www.opensource.org/licenses/MIT)


