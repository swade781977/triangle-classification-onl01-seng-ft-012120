require 'pry'
class Triangle
  class TriangleError < StandardError
    def message
      "The current side lengths do not currently create a triangle. Please make sure side lengths are \n 1/) Greater than 0 \n 2/) That the sum of any two sides is greater than the third side."
  end
  
  attr_accessor :side1, :side2, :side3
  
 
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
  end
  
  def kind
    if side1 <= 0 && side2 <= 0 && side3 <= 0
        begin
          raise TriangleError
          rescue TriangleError => error 
            puts error.message
        end
    elsif side1 + side2 <= sides3 || side1 + side3 <= side2 || side2 + side3 <= side1 
        begin
          raise TriangleError
          rescue TriangleError => error 
            puts error.message
        end
    elsif
      if side1 == side2 && side2 == side3 
        :equilateral
      elsif side1 == side2 && side2 != side3 
        :isosceles
      elsif side2 == side3 && side3 != side1
        :isosceles
      elsif side1 == side3 && side3 != side2
        :isosceles
      elsif side1 != side2 && side2 != sides3
        :scalene
      end
    end
  end
end
