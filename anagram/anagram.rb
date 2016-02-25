class Anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    arr = []
    words.select do |word|
      arr << word if to_char(word) == to_char(@anagram) && !(word.to_s.downcase.include? @anagram)
    end
    arr
  end

  private

  def to_char(string)
    string.to_s.downcase.chars.sort
  end
end
