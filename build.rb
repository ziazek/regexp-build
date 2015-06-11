#!/usr/bin/env ruby

require_relative 'lib/regexp_build'

def test(string, regexp)
  printstr = "\"#{string}\""
  print "#{printstr.rjust(6)} =~ #{regexp.to_s[0..90].ljust(95)} ...    "
  print !!(string =~ regexp)
  puts ""
end

lucky = Regexp.build(3, 7)

test "7", lucky
test "13", lucky
test "3", lucky

month = Regexp.build(1..12)

test "0", month 
test "1", month 
test "12", month 

day = Regexp.build(1..31)

test "6", day 
test "16", day 
test "Tues", day 

year = Regexp.build(98,99,2000..2005)

test "04", year 
test "2004", year 
test "99", year 

neg = Regexp.build(-5..5)

test "-5", neg
test "-6", neg
test "-05", neg

# num = Regexp.build(0..1_000_000)

# test "-1", num