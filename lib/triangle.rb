class Triangle
  attr_accessor :lenght_a, :lenght_b, :lenght_c
  
  def initialize(lenght_a, lenght_b, lenght_c)
    @lenght_a = lenght_a
    @lenght_b = lenght_b
    @lenght_c = lenght_c
  end
  
  def kind
    validate_triangle
    if lenght_a ==lenght_b && lenght_b == lenght_c
      :equilateral
    elsif lenght_a == lenght_b || lenght_b == lenght_c || lenght_c == lenght_a
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    real_triangle = [(lenght_a + lenght_b > lenght_c), (lenght_a + lenght_c > lenght_b), (lenght_b + lenght_c > lenght_a)]
    [lenght_a, lenght_b, lenght_c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
  
  class TriangleError < StandardError
    
  end
end
