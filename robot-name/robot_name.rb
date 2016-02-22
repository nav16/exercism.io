class Robot

	def initialize
		@num_part = Robot.gen_rand_int
		@str_part = Robot.gen_rand_str 
	end

	def name
		@str_part.concat(@num_part.to_s)
	end

	def reset
		#Robot.gen_rand_str.concat(Robot.gen_rand_int.to_s)
		name
	end

	def self.gen_rand_int
		rand(999 - 100) + 100
	end

	def self.gen_rand_str(length = 2)
		('A'..'Z').sort_by {rand}[0,length].join
	end
	
end