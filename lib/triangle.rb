class Triangle
  # write code here
  attr_accessor :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1==@s2 && @s2==@s3 && @s1==@s3
      return :equilateral
    elsif @s1==@s2 || @s2==@s3 || @s1==@s3
      :isosceles
    elsif @s1!=@s2 && @s2!=@s3 && @s1!=@s3
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end
