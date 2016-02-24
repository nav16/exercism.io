class Array

  def accumulate
    map { |cd| yield cd }
  end

end
