#!/usr/bin/env ruby

class String
  def str_mul(times)
    send(:*, times)
  end
end

if __FILE__ == $0
  p 'xxx'.str_mul(2)
  # => "xxxxxx"

  puts 'abc'.str_mul(2)
  # => abcabc

  # print 'xyz'.str_mul(-2) # => ArgumentError

  print 'xyz'.str_mul(3.3), "\n"
  # => xyzxyzxyz
end
