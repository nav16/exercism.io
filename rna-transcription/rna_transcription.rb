class Complement
  VERSION = 3
  STRAND_MATCHS = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(nucleotide)
     strand = nucleotide.chars
     arr = transcribe(strand)
   end

  def self.transcribe(strand)
    arr = []
    strand.each  do |letter|
      STRAND_MATCHS.each do |value, replace|
        arr << replace if letter == value
      end
        str = "CGTA"
        raise ArgumentError if !str.include? letter
    end
    arr.join
  end

end
