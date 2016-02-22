class Complement
	VERSION = 3

  def self.of_dna(nucleotide)
     strand = nucleotide.chars
     arr = transcribe(strand)
   end
 
   def self.transcribe(strand)
     arr = []
     strand.each  do |letter|
       arr << 'G' if letter == 'C'
       arr << 'C' if letter == 'G'
       arr << 'A' if letter == 'T'
       arr << 'U' if letter == 'A'
       str = "CGTA"
		raise ArgumentError if !str.include? letter
     end
     arr.join
   end
end 
