require_relative 'board'

class Solver

  def initialize(input)
    @input = input
    @board = Board.new(input)
  end

  def solve(document)
    solve_rows
  end

  def solve_rows
    grid = @board.set_up_board
    grid = grid.collect do |line|
      row = Row.new
      row.solve(line)
    end
    grid.collect{|row| row.join}.join("\n")
  end





end
