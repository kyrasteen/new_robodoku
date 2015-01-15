class Spot
  attr_reader :possibilities, :coordinates

  def initialize(coordinates)
    @possibilities = (1..9).to_a
    @coordinates = coordinates
  end
  
end
