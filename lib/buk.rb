#!/usr/bin/env ruby

class String
  def buk
    'Buk'
  end
end

if __FILE__ == $0
  p 'xyz'.buk # => "Buk"
  puts 'xyz'.buk # => Buk
  print 'xyz'.buk, "\n" # => Buk
end
