require 'minitest/autorun'
require './lib/comma_split'

class CommaSplitTest < Minitest::Test
  def test_comma_split
    assert_equal ['a str', ' ing'], 'a str, ing'.comma_split
    assert_equal ['a str', 'ing'], 'a str,ing'.comma_split
    assert_equal ['a', ' str', 'ing'], 'a, str,ing'.comma_split

    assert_raises(NoMethodError) { 1.comma_split }

    assert_output("[\"a str\", \" ing\"]\n") { p 'a str, ing'.comma_split }
    assert_output("a str\n ing\n") { puts 'a str, ing'.comma_split }
  end
end
