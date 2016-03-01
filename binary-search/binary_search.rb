class BinarySearch
  attr_reader :list

  def initialize(input)
    fail ArgumentError unless input.each_cons(2).all? { |a, b| b > a }
    @list = input
  end

  def middle
    find_middle(low = 0, high = @list.size - 1)
  end

  def search_for(number)
    call_recursive(number, low = 0, high = @list.size - 1)
  end

  private

  def find_middle(low, high)
    fail RuntimeError if @list[low..high].empty?
    (low + high) / 2
  end

  def call_recursive(number, low, high)
    mid = find_middle(low, high)
    case
    when @list[mid] == number
      mid
    when @list[mid] > number
      high = mid - 1
      call_recursive(number, low, high)
    else
      low = mid + 1
      call_recursive(number, low, high)
    end
  end
end
