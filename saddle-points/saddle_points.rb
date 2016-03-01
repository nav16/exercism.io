class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @string_arr = string.split("\n")
    create_matrix(@string_arr.length, @string_arr[0].split(" ").length)
    @rows = @matrix
    @columns = @rows.transpose
  end

  def saddle_points
    positions.select do |pos|
      check_saddle_point? pos
    end
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

  def check_saddle_point?(position)
    value = rows[position[0]][position[1]]
    @rows[position[0]].all? {|test| value >= test} &&
    @columns[position[1]].all? {|test| value <= test}
  end

  def positions
    positions = []
    (0...(@rows.count)).each do |row|
      (0...(@columns.count)).each do |col|
        positions << [row,col]
      end
    end
    positions
  end
end
