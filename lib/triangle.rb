class Triangle
  class TriangleError < StandardError
  end
  
  attr_accessor :side1, :side2, :side3
  
  @@sides = []
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @@sides << side1
    @side2 = side2
    @@sides << side2
    @side3 = side3
    @@sides << side3
  end
  
  def kind
    
end
