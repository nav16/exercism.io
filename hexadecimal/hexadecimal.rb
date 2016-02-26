class Hexadecimal
  HEXADECIMAL = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
    '6' => 6, '7' => 7, '8' => 8, '9' => 9,
    'a' => 10,'b' => 11,'c' => 12,'d' => 13,'e' => 14,'f' => 15
  }.freeze

  def initialize(hexnumber)
    @hexnumber = hexnumber.reverse!
  end

  def to_decimal
    return 0 if check_invalid_hex?
    convert_to_hexnumber
  end

  private

  def convert_to_hexnumber
    (0...(@hexnumber.length)).inject(0) do |sum, num|
      sum + HEXADECIMAL[@hexnumber[num]].to_i * (16 ** num)
    end
  end

  def check_invalid_hex?
    !!(@hexnumber =~ /[^0-9a-f]+/)
  end
end
