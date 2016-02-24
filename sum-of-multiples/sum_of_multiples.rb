class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    sum = 0
    (1...limit).each do |num|
      sum += num if multiple? (num)
    end
    sum
  end

  def self.to(limit)
    new(3, 5).to(limit)
  end

  private

    def multiple?(num)
      @multiples.any? do |multiple|
          num % multiple == 0
      end
    end

end
puts SumOfMultiples.to(150)
