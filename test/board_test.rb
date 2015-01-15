require_relative '../lib/board'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_it_sets_up_board
    input = "123456789\n123456789"
    board = Board.new(input)
    assert_equal [[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]], board.set_up_grid
  end

  def test_it_creates_grid
    input = "123456789\n123456789"
    board = Board.new(input)
    assert board.set_up_grid.is_a?(Array)
  end

  def test_it_fills_empty_spaces_with_spot_objects
    input = "123056789\n123406789"
    board = Board.new(input)
    assert_instance_of(Spot, board.insert_spots[0][3] )
  end

  def test_it_makes_a_row_from_given_spot
    #not sure how to assert this
    input = "123056789\n123406789"
    board = Board.new(input)
    board.insert_spots
    coordinates = {row:0, column: 3}
    spot = Spot.new(coordinates)
    assert_equal [1,2,3,' spot',5,6,7,8,9], board.row_maker(spot)
  end

  def test_it_makes_a_column
    #not sure how to assert this
    input = "023456789\n123406789"
    board = Board.new(input)
    board.insert_spots
    coordinates = {row:0, column: 0}
    spot = Spot.new(coordinates)
    assert_equal ['spot', 1], board.column_maker(spot)
  end

  def test_it_finds_a_square
    input = "023456789\n123406789"
    board = Board.new(input)
    board.insert_spots
    coordinates = {row:0, column: 0}
    spot = Spot.new(coordinates)
    assert_equal ['spot', 1], board.column_maker(spot)
  end


end
