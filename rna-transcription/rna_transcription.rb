class Complement
	VERSION = 3

  def self.of_dna(nucleotide)
    nucleotide.gsub('G', 'C').gsub('C', 'G').gsub('T', 'A').gsub('A', 'U')
  end

end