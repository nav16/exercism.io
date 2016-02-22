class Grains

	def self.square(number)
		number = 2 ** ( number - 1 )
	end

	def self.total
		sum = 0
		(1..64).each do |i|
			sum += 2 ** ( i - 1 )
		end
		sum
	end
end