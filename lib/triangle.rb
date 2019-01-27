class Triangle
attr_accessor :length_one, :length_two, :length_three

def initialize(length_one, length_two, length_three)
  @length_one > 0
  @length_two > 0
  @length_three > 0
end

def kind
  if length_one == length_two && length_two == length_three
    :equilateral
  elsif
    length_one == length_two || length_two == length_three || length_one == length_three
    :isosceles
  elsif
    length_one != length_two && length_two != length_three
    :scalene
  else
    raise TriangleError
  end
end
end

class TriangleError < StandardError
  # triangle error code
end # write code here
