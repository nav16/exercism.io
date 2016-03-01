class Luhn

  def self.create(number)
    new("#{number}0").create
  end

  def initialize(number)
    @number = number.to_s
  end

  def addends
    @number.reverse.chars.each_with_index.map do |char, index|
      to_lunh(char.to_i, index)
    end.reverse
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def create
    @number[-1] = check_digit.to_s if !valid?
    @number.to_i
  end

  private
  def to_lunh(num, index)
    index % 2 == 0 ? num : double_digits(num)
  end

  def double_digits(num)
    (num = num * 2) > 10 ? num - 9 : num
  end

  def check_digit
    valid? ? 0 : 10 - (checksum % 10)
  end
end
