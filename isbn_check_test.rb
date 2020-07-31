require 'minitest/autorun'
load 'isbn_check.rb'

class IsbnCheckTest < Minitest::Test
  def test_is_valid_isbn_number
    number = 978014300723
    assert_equal 9780143007234, fetch_check_digit(number)
  end

  def test_multiplication_is_valid_for_even
    number = 9
    assert_equal 27, multiply_value(9, true)
  end

  def test_multiplication_is_valid_for_odd
    number = 9
    assert_equal 9, multiply_value(9, false)
  end

end
