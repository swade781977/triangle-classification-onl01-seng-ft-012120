require 'pry'
class Triangle
  class TriangleError < StandardError
    def message
      "The current side lengths do not currently create a triangle. Please make sure side lengths are \n 1/) Greater than 0 \n 2/) That the sum of any two sides is greater than the third side."
    end
  end
  
  attr_accessor :a, :b, :c
  
 
  
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
  end
  
  def is_triangle?
    [a,b,c].max < [a,b,c].inject(:+)/2.0
  end
  
  def kind
  end
end

a = Triangle.new(7,3,2)
a.is_triangle?