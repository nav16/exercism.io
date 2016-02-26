class Anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    words.select do |word|
      word if to_char(word) == to_char(@anagram) && !(to_downcase(word).include? @anagram)
    end
  end

  private

  def to_downcase(word)
    word.to_s.downcase
  end

  def to_char(string)
    to_downcase(string).chars.sort
  end
end
