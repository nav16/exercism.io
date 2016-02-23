class Bob

	def hey(command)
		command = command.gsub("\n", "")
		str = command.strip
		return "Fine. Be that way!" if str.empty?

		command1 = command.upcase
		out = command <=> command1
		str = /\d\?|[^A-Z]\?/.match(command)
		return "Whoa, chill out!" if !str && out == 0

		str = /\?$/.match(command)
		return "Sure." if str

		return "Whatever."

	end
end

pharse = Bob.new
puts pharse.hey("1, 2, 3")