#!/usr/bin/env ruby

class String
  def comma_split
    split(",")
  end
end

if __FILE__ == $0
  p 'a str, ing'.comma_split
  # => ["a str", " ing"]

  puts 'a str, ing'.comma_split
  # =>
  # a str
  #  ing

  puts 'a str,ing'.comma_split
  # =>
  # a str
  # ing

  print 'a, str, ing'.comma_split, "\n"
  # => ["a", " str", " ing"]
end
