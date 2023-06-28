class Triangle
  # write code here
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
    @sum_one = first + second
    @sum_two = first + third
    @sum_three = second + third
  end

  def kind
    if @sum_one > @third && @sum_two > @second && @sum_three > @first
      if @first == @second || @first == @third || @second == @third
        if @sum_three / 2 == @first
          return :equilateral
        end
        return :isosceles
      end
      return :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end    
end
