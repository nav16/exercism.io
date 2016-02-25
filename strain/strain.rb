class Array

  def keep
    if block_given?
      map { |val| val if (yield val) }.compact
    end
  end

  def discard
    keep { |val| !(yield val) }
  end

end
