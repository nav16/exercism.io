class Scrabble
  SCORE = {
    'A,E,I,O,U,L,N,R,S,T' => 1,
    'D,G' => 2,
    'B,C,M,P' => 3,
    'F,H,V,W,Y' => 4,
    'K' => 5,
    'J,X' => 8,
    'Q,Z' => 10
  }.freeze

  def initialize(word)
    @word = word.to_s.upcase.strip
  end

  def score
    sum = 0
    @word.each_char do |letter|
      sum += match_hash(letter)
    end
    sum
  end

  def self.score(word)
    new(word).score
  end

  private

  def match_hash(letter)
    SCORE.each do |key, value|
      return value if key.include? letter
    end
  end
end
