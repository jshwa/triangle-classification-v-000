class Triangle
  attr_reader :a, :b, :c

  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def kind
    if @a + @b > 0 && @a + @c > 0 && @c + @b > 0
      case @a, @b, @c
        when @a == @b == @c
          :equilateral
        when @a == @b || @b == @c || @a == @c
          :isosceles
        else
          :scalene
        end 
    else 
      raise TriangleError
    end
  end
end

class TriangleError < StandardError

end

  