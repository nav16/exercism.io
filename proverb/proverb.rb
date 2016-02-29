class Proverb

  def initialize(*words, **qualifier)
    @words = words
    @qualifier = qualifier[:qualifier]
    @qualifier += " " unless @qualifier.nil?
  end

  def to_s
    output = append_lines.join
    output += "And all for the want of a #{@qualifier}#{@words[0]}."
  end

  private

  def append_lines
    (0..@words.length - 2).map do |num|
      "For want of a #{@words[num]} the #{@words[num + 1]} was lost.\n"
    end
  end
end
