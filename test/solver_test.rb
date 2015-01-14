require_relative '../lib/solver'
require 'minitest/autorun'
require 'minitest/pride'

class SolverTest < Minitest::Test

  def test_it_exists
    input = "123"
    assert Solver.new(input)
  end

  # def test_it_sets_up_a_board_with_one_row
  #   solver = Solver.new
  #   document = "123456789"
  #   assert_equal [[1,2,3,4,5,6,7,8,9]], solver.set_up_board(document)
  # end

  # def test_it_sets_up_full_board
  #   solver = Solver.new
  #   document = "123456789\n123456789\n112345678"
  #   assert_equal [[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,1,2,3,4,5,6,7,8]],solver.set_up_board(document)
  # end

  def test_it_solves_a_entire_board
    input = File.read('./test/boards/board1.txt')
    solver = Solver.new(input)
    answer = solver.solve(input)
    assert_equal File.read('./test/boards/solved_board.txt').chop, answer
  end

  # def test_it_solves_puzzle
  #   skip
  #   solver = Solver.new
  #   puzzle = File.read(../boards/board1.txt)
  #   solution = solver.solve(puzzle)
  #   assert_equal solution, File.read(../boards/solved_board.txt)
  # end

end
