#!/usr/bin/env ruby

require 'pry-byebug'

class Regexp
  def self.build(*args)
    raise ArgumentError, "Too few arguments" if args.length < 1
    matchers = []
    args.each do |arg|
      # binding.pry
      raise ArgumentError, "Invalid argument" unless (arg.respond_to?(:to_int) || arg.instance_of?(Range))
      if arg.respond_to?(:to_int)
        matchers << arg
      elsif arg.instance_of?(Range)
        matchers += arg.to_a
      end
    end
    result = matchers.uniq.map do |i| 
      if i >= 0 
        Regexp.new("^0*#{i}$") 
      else
        Regexp.new("^-0*#{i.abs}$")
      end
    end
    return Regexp.union(result)
  end
end