class Series

  def initialize(number)
    @number = number.chars.map(&:to_i)
  end

  def slices(slice)
    raise ArgumentError if @number.length < slice
    nu = []
    (0..(@number.length)).each do |num|
      nu << @number[num..slice + num - 1].to_a if @number[num..slice + num - 1].length == slice
    end
    nu
  end

end
