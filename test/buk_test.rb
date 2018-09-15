require 'minitest/autorun'
require './lib/buk'

class BukTest < Minitest::Test
  def test_buk
    assert_equal 'Buk', 'xyz'.buk

    assert_output("\"Buk\"\n") { p 'xyz'.buk }
    assert_output("Buk\n") { puts 'aaabbbccc'.buk }
    assert_output("Buk\n") { print 'aaabbbccc'.buk, "\n" }
  end
end
