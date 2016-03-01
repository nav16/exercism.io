class Series
  VERSION = 1
  def initialize(number)
    @number = number
  end

  def largest_product(digits)
    fail ArgumentError if @number.length < digits || !!(@number =~ /[^0-9]/)
    return 1 if digits == 0
    arr = combinations(digits)
    max = 0
    arr.each do |a|
      product = eval(a)
      max = product if product > max
    end
    max
  end

  private

  def combinations(digits)
    output_arr = []
    @number.chars.each_cons(digits) do |arr|
      output_arr << arr.join('*')
    end
    output_arr
  end
end
