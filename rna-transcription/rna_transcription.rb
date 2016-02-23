class Complement
  VERSION = 3
  STRAND_MATCHS = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(nucleotide)
     transcribe(nucleotide)
   end

  def self.transcribe(strand)
    arr = ''
    strand.each_char  do |letter|
      raise ArgumentError if !STRAND_MATCHS.keys.include? letter
      arr << STRAND_MATCHS[letter]
    end
    arr
  end

end
