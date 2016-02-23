class Raindrops
  VERSION = 1
  RAINDROPS = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }

  def self.convert(number)
    str = number.to_s
    RAINDROPS.each do |factor, word|
      str << word if number % factor == 0
    end
    str
  end

end
