class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @string_arr = string.split("\n")
    create_matrix(@string_arr.length, @string_arr[0].split(" ").length)
    @rows = @matrix
    @columns = @rows.transpose
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
end
