class PigLatin

  def self.translate(word)
    @word = word
    return for_vowel if "aeiou".include? @word[0]
    ch =  check_for_special_cases
    puts ch
    return for_special_case(ch) if ch.length > 1
    return for_consonant
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

  def self.check_for_special_cases
    %w[ch qu thr th sch].each do |char|
      return char if @word.start_with?(char)
    end
  end
end

puts PigLatin.translate('chair')
