class Trinary

  def initialize(number)
    @number = number.reverse!
  end

  def to_decimal
    return 0 if check_valid_no?
    convert_to_trinary
  end

  private

    def check_valid_no?
      !!(@number =~ /[^\d]+/)
    end

    def convert_to_trinary
      (0...(@number.length)).inject(0) do |sum, num|
        sum + @number[num].to_i * (3 ** num)
      end
    end

end
