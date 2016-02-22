class Hamming
	def self.compute(a, b)
		#len = [a.length, b.length].min
		raise ArgumentError unless a.length == b.length
		len = a.length
		count = 0
		(0..len-1).each do |i|
			count += 1 if a[i] != b[i]
		end
		count
	end
end
