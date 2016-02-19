class HelloWorld
	def self.hello(*name)
		if name[0].nil?
			str = "Hello, World!"
		else
			str = "Hello, #{name[0]}!"
		end
		str
	end
end
			