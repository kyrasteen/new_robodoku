class Row
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end
#input for row is string
  def set_up_row(input)
    numbers = input.split('')
    row = numbers.each do |num|
      @data << num.to_i
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
    set_up_row(input)
    reduce_possibilities
    fill_empty_spots
  end
end
