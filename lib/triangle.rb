require 'pry'
class Triangle
  class TriangleError < StandardError
    def message
      "The current side lengths do not currently create a triangle. Please make sure side lengths are \n 1/) Greater than 0 \n 2/) That the sum of any two sides is greater than the third side."
    end
  end
  
  attr_accessor :a, :b, :c
  
 
  @@sides = []
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
    @@sides = [a,b,c]
  end
  
  def is_triangle?
    sides.max < sides.inject(:+)/2.0
  end
  
  def kind
    if self.is_triangle? == true
      if a == b && b == c 
        :equilateral
      end
    end
  end
end

f = Triangle.new(2,2,2)
f.kind