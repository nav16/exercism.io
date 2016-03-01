class PigLatin

  def self.translate(word)
    @word_list = word.split(" ")
    @word_list.map do |word|
      @word = word
      return for_vowel if check_like_vowel
      return for_vowel if "aeiou".include? @word[0]
      ch =  check_for_special_cases
      return for_special_case(ch) if !ch.nil? && ch.length > 1
      return for_consonant
    end
  end

  private

  def self.for_vowel
    @word.to_s + "ay"
  end

  def self.for_consonant
    @word[1..-1].to_s + @word[0].to_s + "ay"
  end

  def self.for_special_case(char)
    len = char.length
    @word[len..-1].to_s + char.to_s + "ay"
  end

  def self.check_like_vowel
    %w[yt xr].detect do |char|
      return true if @word.start_with?(char)
    end
  end

  def self.check_for_special_cases
    %w[ch qu squ thr th sch].detect do |char|
      return char if @word.start_with?(char)
    end
  end
end
