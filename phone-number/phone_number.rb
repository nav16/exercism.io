class PhoneNumber
  attr_reader :number

  def initialize(value)
    clean_number(value)
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{area_code}) #{@number[3..5]}-#{@number[6..9]}"
  end

  private
  def clean_number(value)
    @number = value.to_s
    remove_non_digits
    return error_number if validate_digits
    pop_one_eleven_digits
    validate_length
  end

  private
    def remove_non_digits
      @number.gsub!(/[().\s-]+/, "")
    end

  private
  def pop_one_eleven_digits
    @number.sub!(/^./,'') if @number.size == 11 && number[0] == '1'
  end

  private
  def validate_length
    error_number unless @number.size == 10 and !(@number =~ /[a-zA-Z]+/)
  end

  def validate_digits
    !(@number =~ /[\d]+/)
  end

  def error_number
    @number = '0000000000'
  end
end
