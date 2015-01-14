require_relative '../lib/board'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_it_creates_a_row
    input = "123456789\n123456789"
    board = Board.new(input)
    assert_instance_of(Row, board.make_rows)
  end


end
