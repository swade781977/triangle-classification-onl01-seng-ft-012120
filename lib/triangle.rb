class Triangle
  class TriangleError < StandardError
    def message
      "The current side lengths do not currently create a triangle. Please make sure side lengths are \n 1/) Greater than 0 \n 2/) That the sum of any two sides is greater than the third side."
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
    sides.each |side|
      if 0 >= side
        begin
          raise TriangleError
          rescue TriangleError => error 
            puts error.message
        end
      elsif sides[0] + sides[1] !> sides[2] || sides[0] + sides[2] !> side[1] || sides[1] + sides[2] !> sides[0] 
        begin
          raise TriangleError
          rescue TriangleError => error 
            puts error.message
        end
      else
        if sides[0] == sides[1] && sides[1] == sides[2]
          :equilateral
        elsif sides[0] == side[1] && sides[1] != sides[2]
          :isosceles
        elsif sides[1] == sides[2] && sides[2] != sides[0]
          :isosceles
        elsif sides[0] == sides[2] && sides[2] != sides[1]
          :isosceles
        elsif sides[0] != sides[1] && sides[1] != sides[2]
          :scalene
        end
      end
    end
end
