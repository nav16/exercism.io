class SecretHandshake

  ACTIONS = ['wink','double blink','close your eyes','jump']

  def initialize(number)
    @binary_number = !!(number =~ /[^0-1]+/) ? '0' : number.to_s(2)
  end

  def commands
    output = calculate_cmd
    output = @binary_number[4] == '1' ? output.reverse : output
  end

  private

  def calculate_cmd
    @binary_number.reverse.slice(0,4).chars.each_with_index.map do |char, index|
      ACTIONS[index] if char == '1'
    end.compact
  end
end
