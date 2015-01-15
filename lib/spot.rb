class Spot
  attr_reader :possibilities, :coordinates, :square

  def initialize(coordinates, square)
    @possibilities = (1..9).to_a
    @coordinates = coordinates
    @square = square
  end

end
