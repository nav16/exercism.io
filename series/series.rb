class Series

  def initialize(number)
    @number = number.chars.map(&:to_i)
  end

  def slices(slice)
    raise ArgumentError if @number.length < slice
    @number.each_cons(slice).to_a
  end

end
