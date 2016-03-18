class Squares
 VERSION = 2
 def initialize(number)
  @number = number
 end

 def square_of_sum
  (1..@number).inject(0) { |sum, i| sum + i } ** 2
 end

 def sum_of_squares
  (1..@number).inject(0) { |sum, i| sum + (i ** 2) }
 end

 def difference
  square_of_sum - sum_of_squares
 end
end
