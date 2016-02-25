class Array

  def keep
    if block_given?
      map do |n|
        n if yield(n)
      end.compact
    end
  end

  def discard
    if block_given?
      map do |n|
        n unless yield(n)
      end.compact
    end
  end

end
