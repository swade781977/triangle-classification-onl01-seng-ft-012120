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
  
    def is_triangle?(a,b,c)
  [a,b,c].max < [a,b,c].inject(:+)/2.0
end
  
  def kind(a,b,c)
  end
end

a.Triangle(7,3,2)
a.is_triangle