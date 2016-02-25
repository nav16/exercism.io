class PrimeFactors

  def self.for(number)
    @number = number
    @factors = []
    prime
  end

  def self.prime
    prime_factors(2)
    (3..((@number ** 0.5).floor)).each do |num|
      prime_factors(num)
    end
    @factors << @number if (@number > 2)
    @factors
  end

  private

    def self.prime_factors(divisor)
      while @number % divisor == 0
        @factors << divisor
        @number = @number / divisor
      end
    end

end
