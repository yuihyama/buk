require 'minitest/autorun'
require './lib/str_mul'

class StrMulTest < Minitest::Test
  def test_str_mul
    assert_equal 'xxxxxx', 'xxx'.str_mul(2)
    assert_equal 'abcabc', 'abc'.str_mul(2)
    assert_equal 'abcabcabc', 'abc'.str_mul(3.3)

    assert_raises(ArgumentError) { 'abc'.str_mul(-2) }

    assert_output("\"xxxxxx\"\n") { p 'xxx'.str_mul(2) }
    assert_output("abcabc\n") { puts 'abc'.str_mul(2) }
    assert_output("abcabcabc\n") { print 'abc'.str_mul(3.3), "\n" }
  end
end
