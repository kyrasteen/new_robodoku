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

  def row_selector_for_square(spot)
    case spot.coordinates[:row]
    when (0..2)
      grid[0..2]
    when(3..5)
      grid[3..5]
    when (6..8)
      grid[6..8]
    end
  end

  def column_selector_for_square(spot, set_of_rows)
    square = []
    case spot.square
      when 1,4,7 then row_selector_for_square.each { |row| square << row[0..2]}
      when 2,5,8 then row_selector_for_square.each { |row| square << row[3..5]}
      when 3,6,9 then row_selector_for_square.each { |row| square << row[6..8]}
    end
    square
  end

  def square_maker(spot)
    rows = row_selector_for_square(spot)
    column_selector_for_square(spot, rows)
  end

end
