class Hamming
	def self.compute(a, b)
		len = [a.length, b.length].min
		count = 0
		(0..len-1).each do |i|
			count += 1 if a[i] != b[i]
		end
		count
	end
end