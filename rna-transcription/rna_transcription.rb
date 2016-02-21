class Complement
	VERSION = 3

  def self.of_dna(nucleotide)
    nucleotide.gsub('C', 'G').gsub('G', 'C').gsub('T', 'A').gsub('A', 'U')
  end

end