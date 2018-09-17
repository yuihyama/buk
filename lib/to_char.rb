#!/usr/bin/env ruby

class String
  def to_char
    self.split(//)
  end
end

if __FILE__ == $0
  p 'a string'.to_char # => ["a", " ", "s", "t", "r", "i", "n", "g"]

  puts 'a string'.to_char
  # =>
  # a
  #
  # s
  # t
  # r
  # i
  # n
  # g

  print 'a string'.to_char, "\n" # => ["a", " ", "s", "t", "r", "i", "n", "g"]

  printf "%s\n", 'a string'.to_char # => ["a", " ", "s", "t", "r", "i", "n", "g"]
end
