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
      :scalene
    elsif @s1 == 0 || @s2 == 0 || @s3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end
