class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @string_arr = string.split("\n")
    create_matrix(@string_arr.length, @string_arr[0].split(" ").length)
    @rows = @matrix
    @columns = @rows.transpose
  end

  def saddle_points
    find_saddle_points
  end

  private

  def create_matrix(rows, cols)
    string_arr = @string_arr.join(" ").split(" ").to_a
    @matrix = Array.new(rows) { Array.new(cols, "*") }
    count = 0
      rows.times do |row|
        cols.times do |col|
          @matrix[row][col] = string_arr[count].to_i
          count += 1
        end
      end
  end

  def find_saddle_points
    arr = []
    @matrix.each_with_index do |value, index|
      arr << if
    max = @rows.max
    min = @columns.min
    return [@rows.index] if max == min
  end
end

matrix = Matrix.new("18 3 39 19 91\n38 10 8 77 320\n3 4 8 6 7")
puts matrix.saddle_points
