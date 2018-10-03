require 'minitest/autorun'
require './lib/str_add'

class StrAddTest < Minitest::Test
  def test_str_add
    assert_equal 'ab', 'a'.str_add('b')
    assert_equal 'a string', 'a str'.str_add('ing')

    assert_raises(NoMethodError) { 1.str_add('a') }
    assert_raises(TypeError) { 'a'.str_add(1) }

    assert_output("\"ab\"\n") { p 'a'.str_add('b') }
    assert_output("a string\n") { puts 'a str'.str_add('ing') }
  end
end
