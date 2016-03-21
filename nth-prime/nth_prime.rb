class Prime
  def self.nth(num)
    fail ArgumentError if num == 0
    start, prime_no, flag = 2, '', false
    loop do
      flag = Prime.prime?(start)
      if flag
        prime_no = start
        num -= 1
      end
      start = start.next
      break if num < 1
    end
    prime_no.to_i
  end

  def self.prime?(num)
    (2..(num/2).floor).each do |i|
      return false if num % i == 0
    end
    true
  end
end

