class Bob

  def hey(command)
    command = command.gsub("\n", " ")
    return "Whoa, chill out!" if command =~ /[a-zA-Z]+/ && (command == command.upcase)

    return "Sure." if command =~ /\?$/

    return "Fine. Be that way!" if !(command =~ /\w/)

    return "Whatever."

  end
end
pharse = Bob.new
remark = %(
Does this cryogenic chamber make me look fat?
no)
puts pharse.hey(remark)
