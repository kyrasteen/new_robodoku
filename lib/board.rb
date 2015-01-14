require_relative 'row'

class Board
  attr_reader :input

  def initialize(input)
    @input = input
    # @row = Row.new
  end

  def set_up_board
    rows = input.split("\n")
    rows.map do |row|
      numbers = row.split('')
      numbers.map do |n|
        n.to_i
      end
    end
  end


end
