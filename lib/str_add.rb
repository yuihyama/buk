#!/usr/bin/env ruby

class String
  def str_add(x)
    send(:+, x)
  end
end

if __FILE__ == $0
  p 'a'.str_add('b')
  # => ab

  puts 'a str'.str_add('ing')
  # => a string

  # puts 1.str_add(2)

  print 'a str,'.str_add('ing'), "\n"
  # =>
  # a str,ing
end
