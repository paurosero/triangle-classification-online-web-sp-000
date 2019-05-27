class Triangle
  attr_accessor :lenght_a, :lenght_b, :lenght_c, :equilateral, :isosceles, :scalene
  
  def initialize(lenght_a, lenght_b, lenght_c)
    @lenght_a = lenght_a
    @lenght_b = lenght_b
    @lenght_c = lenght_c
  end
  
  def kind
    if lenght_a == lenght_b || lenght_b == lenght_c || lenght_c != lenght_a
      :isosceles
    
  end
  
  class TriangleError < StandardError
    
  end
end
