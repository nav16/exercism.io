class HelloWorld
	def self.hello(*name)
		str = "Hello, World!"
		if !name[0].nil?
			str = "Hello, #{name[0]}!"
		end
		str
	end
end
			