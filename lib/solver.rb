require_relative 'board'
require_relative 'row'
class Solver

  def initialize(input)
    # @input = input
    @board = Board.new(input)
  end

  def solve(document)
    #take a spot, find its row
    #reduce possibilities for spot, or solve for spot in row
    #reduce possibilities for spot, or solve for spot in column
    #reduce possibilities for spot, or solve for spot in square
    solve_rows
  end

  def solve_rows
    grid = @board.set_up_grid
    grid = grid.collect do |line|
      row = Row.new
      row.solve(line)
    end
    grid.collect{|row| row.join}.join("\n")
  end

  def solve_columns
    grid = @board.set_up_grid
    grid = grid.collect do |line|
      row = Row.new
      row.solve(line)
    end
    grid.collect{|row| row.join}.join("\n")
  end





end
