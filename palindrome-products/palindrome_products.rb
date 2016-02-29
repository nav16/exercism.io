class Palindromes

  class Operations

    def initialize(arr, operation)
      @arr, @operation = arr, operation
    end

    def factors
      @arr.map do |arr|
        [arr[0], arr[1]].sort if arr[2] == value
      end.compact.uniq
    end

    def value
      if @operation == 'largest'
        array_number.max
      else
        array_number.min
      end
    end

    private

    def array_number
      @arr.map do |arr|
        arr[2]
      end.compact
    end
  end

  def initialize(max_factor: 1, min_factor: 1)
    @max, @min = max_factor, min_factor
  end

  def generate
    @arr = []
    (@min..@max).each do |max|
      (@min...@max).reverse_each do |min|
        number = min * max
        @arr << [min, max, number] if plaindrome?(number)
      end
    end
    @arr
  end

  def largest
    Operations.new(@arr, 'largest')
  end

  def smallest
    Operations.new(@arr, 'smallest')
  end

  private

  def plaindrome?(number)
    number.to_s == number.to_s.reverse
  end
end
