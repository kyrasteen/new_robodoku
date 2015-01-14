class Row
  attr_reader :data, :possibilities

  def initialize
    @data = []
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  #take in input and convert to array of integers
  def set_up_row(input)
    numbers = input.split('')
    row = numbers.each do |num|
      @data << num.to_i
    end
    @data.push(0) until @data.length == 9
  end

  def solve(input)
    #look through data, for each number found, delete that
    #number from possibilities

    @data.map do |num|
      
    end
  end
end
