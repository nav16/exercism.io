class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    arr = Array.new(@number) { true  }
    arr[0] = arr[1] = false
    (2..(arr.length)).each do |num|
      sum = num
      until sum > @number
        sum = sum + num
        arr[sum] = false
      end
    end
    final_arr = []
    arr.each_index do |num|
      final_arr << num if(arr[num] == true)
    end
    final_arr
  end

end
#puts Sieve.new(10).primes
