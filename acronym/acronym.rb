class Acronym
  VERSION = 1

  def self.abbreviate(pharse)
    pharse = pharse.gsub(/([A-Z]+)/, ' \1').gsub(/([^A-Z]+)/i, ' ')
    pharse = pharse.split.map(&:capitalize).join(' ')
    pharse.scan(/[A-Z]/).join
  end
end
