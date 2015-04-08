class Side < Struct.new(:number, :length); end

class Polygon
  attr_reader :sides, :index

  def initialize
    @sides = []
    @index = {}
  end

  def add_side(side)
    @sides << side
    @index[side.number] = side
    self
  end

  def side(number)
    @index.fetch(number) {
      raise "Polygon doesn't have a side with number: #{number}"
    }
  end
end
