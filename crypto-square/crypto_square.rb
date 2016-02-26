class Crypto

  def initialize(string)
    @string = string.downcase
  end

  def normalize_plaintext
    @string = @string.gsub(/[^0-9a-z]+/i, '')
  end

  def size
    normalize_plaintext
    check_perfect_square(@string.length)
  end

  def plaintext_segments
    normalize_plaintext
    @string.scan(/.{1,#{size}}/)
  end

  def ciphertext
    normalize_ciphertext.gsub(/[\s]+/, '')
  end

  def normalize_ciphertext
    @array = plaintext_segments
    str = ''
    size.times do |num|
      @array.each do |element|
        str << element[num] if !element[num].nil?
      end
      str << " "
    end
    str.strip
  end

  private

  def check_perfect_square(number)
    Math.sqrt(number).ceil
  end
end
