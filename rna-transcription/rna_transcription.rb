class Complement
  VERSION = 3
  STRAND_MATCHS = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(nucleotide)
     transcribe(nucleotide).join
   end

  def self.transcribe(strand)
    strand.each_char.map do |letter|
      raise ArgumentError if !STRAND_MATCHS.keys.include? letter
      STRAND_MATCHS[letter]
    end
  end

end
