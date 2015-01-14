class Column

  attr_reader :possibilities, :data

  def initialize
    @possibilities = (1..9).to_a
    @data = []
  end

  def set_up_column(input)
    @data = input.each do |num|
      @data << num
    end
    @data.push(0) until @data.length == 9
  end

  def reduce_possibilities
    data.map do |num|
      @possibilities.delete(num)
    end
    @possibilities
  end

  def fill_empty_spots
    @data = data.map do |num|
      if num == 0
        num = @possibilities.first
      else
        num
      end
    end
    data
  end

  def solve(input)
    set_up_column(input)
    reduce_possibilities
    fill_empty_spots
  end

end
