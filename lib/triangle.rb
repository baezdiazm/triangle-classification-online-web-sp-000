class Triangle
  # write code here
  attr_accessor :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def self.kind
    if @s1==@s2 && @s2==@s3
      return "quilateral"
    end
  end

  class TriangleError < StandardError
    "Invalid Triangle"
  end
end
