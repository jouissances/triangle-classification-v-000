class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a)
      if (a == b && a == c)
        :equilateral
      elsif (a == b && a != c || a == c && a != b || b == c && b != a)
        :isosceles
      elsif (a != b && a != c && b != c)
        :scalene
      end
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "your triangle is invalid"
    end
  end
end
