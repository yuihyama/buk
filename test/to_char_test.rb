require 'minitest/autorun'
require './lib/to_char'

class ToCharTest < Minitest::Test
  def test_to_char
    assert_equal ["a", " ", "s", "t", "r", "i", "n", "g"], 'a string'.to_char

    assert_raises(NoMethodError) { 1.to_char }

    assert_output("[\"a\", \" \", \"s\", \"t\", \"r\", \"i\", \"n\", \"g\"]\n") {
      p 'a string'.to_char
    }
    assert_output("a\n \ns\nt\nr\ni\nn\ng\n") { puts 'a string'.to_char }
    assert_output("[\"a\", \" \", \"s\", \"t\", \"r\", \"i\", \"n\", \"g\"]\n") {
      print 'a string'.to_char, "\n"
    }
    assert_output("[\"a\", \" \", \"s\", \"t\", \"r\", \"i\", \"n\", \"g\"]\n") {
      printf "%s\n", 'a string'.to_char
    }
  end
end
