class Nucleotide
  HISTOGRAM = {
     'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0
  }

  def initialize(strand)
    @strand = strand
  end

  def self.from_dna(strand)
    raise ArgumentError if !!(strand =~ /[^ATGC]+/)
    Nucleotide.new(strand)
  end

  def count(nucleotide)
    @strand.scan(/#{nucleotide}/).length
  end

  def histogram
    HISTOGRAM.each do |key, value|
      count_all_nucleotide(key)
    end
  end

  private

  def count_all_nucleotide(key)
    HISTOGRAM[key] = count(key)
  end
end
