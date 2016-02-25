class Array

  def keep
    select { |cd| yield cd }
  end

  def discard
    reject { |cd| yield cd }
  end

end
