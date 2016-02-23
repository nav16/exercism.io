class Binary
  VERSION = 1

  def initialize(number)
    raise ArgumentError if number =~ /[^0-1]/
    @number = number
  end

  def to_decimal
    binary_number = @number.chars.reverse
    decimal_number = 0
    (0..(binary_number.length-1)).each do |num|
      decimal_number += 2 ** num if binary_number[num].to_i == 1
    end
    decimal_number
  end

end
