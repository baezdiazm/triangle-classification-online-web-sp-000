class Triangle
  # write code here
  attr_accessor :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @sides = [s1, s2, s3]
  end

  def kind
    @sides.sort!
    if @s1==@s2 && @s2==@s3 && @s1==@s3
      return :equilateral
    elsif @s1==@s2 || @s2==@s3 || @s1==@s3
      :isosceles
    elsif @s1!=@s2 && @s2!=@s3 && @s1!=@s3
      :scalene
    elif @sides[0]+ @sides[1] < @sides[2]
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
