class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c 

  end

  def kind
    a = @a
    b = @b
    c = @c

    if !(a > 0 && b > 0 && c > 0 && a+b > c && a+c > b &&  b + c > a)
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c 
      :isosceles
    else
      :scalene
    end
  end 

  class TriangleError < StandardError
    
  end

end



test = Triangle.new(5, 3, 4)
puts test.kind

