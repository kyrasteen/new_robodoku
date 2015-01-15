require_relative '../lib/spot'
require 'minitest/autorun'
require 'minitest/pride'

class SpotTest < Minitest::Test

  def test_it_has_possibilities
    spot = Spot.new([0,1])
    assert_equal [1,2,3,4,5,6,7,8,9], spot.possibilities
  end

  def test_it_has_coordinates
    spot = Spot.new([0, 1])
    assert_equal [0,1], spot.coordinates
  end

  def test_it_knows_what_square_it_is_in
    skip
  end

end
