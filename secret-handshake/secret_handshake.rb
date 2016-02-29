class SecretHandshake

  ACTIONS = {
    1 => "wink",
    10 => "double blink",
    100 => "close your eyes",
    1000 => "jump"
  }.freeze

  def initialize(number)
    @number = number
    return [] if !!(@number =~ /[^0-1]+/)
    @binary_number = to_binary(@number)
  end

  def commands
    @arr = []
    check_number(@binary_number.to_i)
    @arr
  end

  private

  def check_number(binary_number)
    no_of_digits = binary_number.to_s.length
    binary_number = binary_number.to_i
    case no_of_digits
    when 2
      rem = binary_number.remainder(10)
      @arr << ACTIONS[10]
      check_number(rem)
    when 3
      rem = binary_number.remainder(100)
      @arr << ACTIONS[100]
      check_number(rem)
    when 4
      rem = binary_number.remainder(1000)
      @arr << ACTIONS[1000]
      check_number(rem)
    when 5
      rem = binary_number - 10000
      check_number(rem)
    end
     @arr << ACTIONS[1] if binary_number == 1
  end

  def to_binary(number)
    number.to_s(2)
  end
end

handshake = SecretHandshake.new(19)
puts handshake.commands
