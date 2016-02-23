class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    primes_arr = []
    (2..@number).each do |num|
      primes_arr << num if Sieve.prime? num
    end
    primes_arr
  end

  def self.prime?(num)
    (2..(num/2).floor).each do |i|
      if num % i == 0
        return false
      end
    end
    true
  end
end
