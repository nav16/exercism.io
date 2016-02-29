class Triangle

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    raise TriangleError if !check_inequality? || !check_positivity?
    triangle_kind
  end

  def triangle_kind
      return :equilateral if check_equilateral?
      return :isosceles if check_isosceles?
      return :scalene
  end

  private

  def check_equilateral?
    true if @a == @b && @b== @c
  end

  def check_isosceles?
    true if @a == @b || @a == @c || @b == @c
  end

  def check_inequality?
    true if @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  def check_positivity?
    true if @a > 0 && @b > 0 && @c > 0
  end
end

class TriangleError < Exception
end
