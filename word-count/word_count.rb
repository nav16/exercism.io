class Phrase
  VERSION = 1
  def initialize(str)
    @str = str.gsub(/[,]/, ' ').gsub(/[^0-9A-Za-z\s']/, '')
  end

  def word_count
    hsh = {}
    str_arr = @str.downcase.split(' ')
    str_arr.each do |key|
      match = /^'(\w+)'$/.match(key)
      key = match[1] unless match.nil?
      hsh[key] = Phrase.count(str_arr, key)
      end
    hsh
  end

  def self.count(str_arr, key)
    cnt = 0
    (0..(str_arr.length)).each do |i|
      match = /^'(\w+)'$/.match(str_arr[i])
      str_arr[i] = match[1] unless match.nil?
      cnt += 1 if(key.eql? str_arr[i])
    end
    cnt
  end
end
