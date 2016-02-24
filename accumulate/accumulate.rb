class Array

  def accumulate
    map do |cd|
      (yield cd)
    end
  end

end

    result = [1, 2, 3].accumulate { |number| number * number }
puts result
