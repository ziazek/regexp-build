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
"0"  =~ month     # => false
"1"  =~ month     # => true
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

Also handles leading zeroes in negative numbers!

## Usage

run `bundle install`

## Understanding the Question

Decisions: 

- Anchor to the start and end of the string. 
- `"2004" =~ Regexp.build(4)     # => false`
- Ignore leading zeros.

## Results

```
   "7" =~ (?-mix:(?-mix:^0*3$)|(?-mix:^0*7$))                                                             ...    true
  "13" =~ (?-mix:(?-mix:^0*3$)|(?-mix:^0*7$))                                                             ...    false
   "3" =~ (?-mix:(?-mix:^0*3$)|(?-mix:^0*7$))                                                             ...    true
   "0" =~ (?-mix:(?-mix:^0*1$)|(?-mix:^0*2$)|(?-mix:^0*3$)|(?-mix:^0*4$)|(?-mix:^0*5$)|(?-mix:^0*6$)|     ...    false
   "1" =~ (?-mix:(?-mix:^0*1$)|(?-mix:^0*2$)|(?-mix:^0*3$)|(?-mix:^0*4$)|(?-mix:^0*5$)|(?-mix:^0*6$)|     ...    true
  "12" =~ (?-mix:(?-mix:^0*1$)|(?-mix:^0*2$)|(?-mix:^0*3$)|(?-mix:^0*4$)|(?-mix:^0*5$)|(?-mix:^0*6$)|     ...    true
   "6" =~ (?-mix:(?-mix:^0*1$)|(?-mix:^0*2$)|(?-mix:^0*3$)|(?-mix:^0*4$)|(?-mix:^0*5$)|(?-mix:^0*6$)|     ...    true
  "16" =~ (?-mix:(?-mix:^0*1$)|(?-mix:^0*2$)|(?-mix:^0*3$)|(?-mix:^0*4$)|(?-mix:^0*5$)|(?-mix:^0*6$)|     ...    true
"Tues" =~ (?-mix:(?-mix:^0*1$)|(?-mix:^0*2$)|(?-mix:^0*3$)|(?-mix:^0*4$)|(?-mix:^0*5$)|(?-mix:^0*6$)|     ...    false
  "04" =~ (?-mix:(?-mix:^0*98$)|(?-mix:^0*99$)|(?-mix:^0*2000$)|(?-mix:^0*2001$)|(?-mix:^0*2002$)|(?-     ...    false
"2004" =~ (?-mix:(?-mix:^0*98$)|(?-mix:^0*99$)|(?-mix:^0*2000$)|(?-mix:^0*2001$)|(?-mix:^0*2002$)|(?-     ...    true
  "99" =~ (?-mix:(?-mix:^0*98$)|(?-mix:^0*99$)|(?-mix:^0*2000$)|(?-mix:^0*2001$)|(?-mix:^0*2002$)|(?-     ...    true
  "-5" =~ (?-mix:(?-mix:^-0*5$)|(?-mix:^-0*4$)|(?-mix:^-0*3$)|(?-mix:^-0*2$)|(?-mix:^-0*1$)|(?-mix:^0     ...    true
  "-6" =~ (?-mix:(?-mix:^-0*5$)|(?-mix:^-0*4$)|(?-mix:^-0*3$)|(?-mix:^-0*2$)|(?-mix:^-0*1$)|(?-mix:^0     ...    false
 "-05" =~ (?-mix:(?-mix:^-0*5$)|(?-mix:^-0*4$)|(?-mix:^-0*3$)|(?-mix:^-0*2$)|(?-mix:^-0*1$)|(?-mix:^0     ...    true
 ```
note that the regex has been truncated.

## Review

The following runs rather slowly, due to the number of Regexp initialized.

```ruby
num = Regexp.build(0..1_000_000)

test "-1", num
```

## License

This code is released under the [MIT License](http://www.opensource.org/licenses/MIT)


