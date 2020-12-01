class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

    def kind
      nonzero_check
      inequality_check
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end

    end

    def nonzero_check
      if a <= 0 || b <= 0 || c <= 0
        raise TriangleError
      end
    end

    def inequality_check
      if (a+b<=c) || (a+c<=b) || (b+c<=a)
        raise TriangleError
      end
    end

    class TriangleError < StandardError
    end
end
