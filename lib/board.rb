require_relative 'spot'

class Board
  attr_reader :input, :grid

  def initialize(input)
    @input = input
    @grid = []
  end

  def set_up_grid
    rows = input.split("\n")
    rows.map do |row|
      numbers = row.split('')
      numbers.map do |n|
        n.to_i
      end
    end
  end

  def insert_spots
    @grid = set_up_grid

    grid.each_with_index do |row, row_index|
      row.each_with_index do |num, column_index|
        if num == 0
          coordinates = {row:row_index, column: column_index}
          # row[column_index] = Spot.new([:row, :column])
          row[column_index] = Spot.new(coordinates)

        end
      end
    end
    grid
  end

  def row_maker(spot)
    grid[spot.coordinates[:row]]
  end

  def column_maker(spot)
    grid.transpose[spot.coordinates[:column]]
  end

  def square_maker(spot)
  end

end
