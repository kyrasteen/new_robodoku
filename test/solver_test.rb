require_relative '../lib/solver'
require 'minitest/autorun'
require 'minitest/pride'

class SolverTest < Minitest::Test

  def test_it_exists
    input = "123"
    assert Solver.new(input)
  end

  def test_it_solves_a_entire_board_with_row_logic
    input = File.read('./test/boards/board1.txt')
    solver = Solver.new(input)
    answer = solver.solve(input)
    assert_equal File.read('./test/boards/solved_board.txt').chop, answer
  end

  def test_it_solves_a_entire_board_with_column_logic
    input = File.read('./test/boards/board1.txt')
    solver = Solver.new(input)
    answer = solver.solve_columns
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
