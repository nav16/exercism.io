class Prime

	def self.nth(num)
		raise ArgumentError if num == 0
		start = 2
		prime_no = ''
		flag = false
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
	      if num % i == 0
	        return false
	      end
	    end
	    true
	end
		
end

