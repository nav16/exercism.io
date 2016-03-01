class BinarySearch

  def initialize(list)
    @list = list
    fail ArgumentError if @list != @list.sort
  end

  def list
    @list
  end

  def search_for(number)
    output = @list.index number
    fail RuntimeError if output.nil?
    output
  end

  def middle
    len = @list.length
    @list[len % 2]
  end
end

