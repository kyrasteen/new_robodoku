require_relative '../lib/column'
require 'minitest/autorun'
require 'minitest/pride'

class ColumnTest < Minitest::Test

    def test_column_has_nine_elements
      column = Column.new
      input = [1,2,3,4,5,6,7,8,9]
      column.set_up_column(input)
      assert_equal 9, column.data.length
      assert_equal [1,2,3,4,5,6,7,8,9], column.data
    end

    def test_column_fills_an_empty_spot_with_zero
      column = Column.new
      input = [1,2,3,0,5,6,7,8,9]
      column.set_up_column(input)
      assert_equal 9, column.data.length
      assert_equal [1,2,3,0,5,6,7,8,9], column.data
    end

    def test_a_column_has_a_collection_of_possibilities
      column = Column.new
      assert_equal [1,2,3,4,5,6,7,8,9], column.possibilities
    end

    def test_possibilites_reduce_from_nums_in_column
      column = Column.new
      input = [1,2,3,4,0,6,7,8,9]
      column.solve(input)
      assert_equal [5], column.possibilities
    end

    def test_empty_spot_gets_filled_with_missing_number
      column = Column.new
      input = [1,2,3,0,5,6,7,8,9]
      answer = column.solve(input)
      assert_equal [1,2,3,4,5,6,7,8,9], answer
    end

    def test_empty_spots_get_filled_with_missing_numbers
      skip
    end
end
