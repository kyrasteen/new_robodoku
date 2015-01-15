require_relative '../lib/spot'
require 'minitest/autorun'
require 'minitest/pride'

class SpotTest < Minitest::Test

  def test_it_has_possibilities
    coordinates = {row:0, column:1}
    spot = Spot.new(coordinates, 1)
    assert_equal [1,2,3,4,5,6,7,8,9], spot.possibilities
  end

  def test_it_has_coordinates
    coordinates = {row:0, column:1}
    spot = Spot.new(coordinates,1)
    assert_equal coordinates, spot.coordinates
  end

  def test_it_knows_what_square_it_is_in
    coordinates = {row:0, column:1}
    spot = Spot.new(coordinates,1)
    assert_equal 1, spot.square
  end

end
