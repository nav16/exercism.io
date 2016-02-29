class Atbash

  FIRST = {
    'a' => 'z',
    'b' => 'y',
    'c' => 'x',
    'd' => 'w',
    'e' => 'v',
    'f' => 'u',
    'g' => 't',
    'h' => 's',
    'i' => 'r',
    'j' => 'q',
    'k' => 'p',
    'l' => 'o',
    'm' => 'n'
  }

  LAST = FIRST.invert
  FIRST = LAST.merge(FIRST)

  def self.encode(message)
    @message = clean_message(message)
    @message = to_atbash(@message)
    @message.join.gsub(/(.{5})(?=.)/, '\1 \2')
  end

  private

  def self.to_atbash(message)
    message = message.chars
    message.map do |char|
      FIRST[char].nil? ? char : FIRST[char]
    end
  end

  def self.clean_message(message)
    message.downcase.gsub(/[^a-z0-9]+/, "")
  end
end
