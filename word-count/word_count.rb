class Phrase
	 VERSION = 1
	def initialize(str)
		@str = str.gsub(/[,]/, ' ').gsub(/[^0-9A-Za-z\s']/, '')
	end

	def word_count
		hsh = {}
		str_arr = @str.downcase.split(' ')
		str_arr.each do |key|
			match = /^'(\w+)'$/.match(key)
			if  !match.nil?
				key = match[1] 
			end
			hsh[key] = Phrase.count(str_arr, key)
		end	
		hsh
	end

	def self.count(str_arr, key)
		cnt = 0
		(0..(str_arr.length)).each do |i|
			match = /^'(\w+)'$/.match(str_arr[i])
			if  !match.nil?
				str_arr[i] = match[1] 
			end
			cnt += 1 if(key.eql? str_arr[i])
		end
		cnt
	end

end

phare = Phrase.new("Hewllo can't 'nana' ona")
puts phare.word_count