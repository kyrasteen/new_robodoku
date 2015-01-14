require_relative '../lib/board'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_it_sets_up_board
    input = "123456789\n123456789"
    board = Board.new(input)
    assert_equal [[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]], board.set_up_board
  end

  def test_it_solves_rows
    input = "120456789\n023456789"
    board = Board.new(input)
    assert_equal "123456789\n123456789", board.solve_rows
  end

end
