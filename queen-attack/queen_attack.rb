class Queens
  DEFAULTS = { white: [0, 3], black: [7, 3] }.freeze

  def initialize(position = DEFAULTS)
    @white = position[:white]
    @black = position[:black]
    @board = Array.new(8) {Array.new(8,'_')}
    check_error?
  end

  def white
    @white
  end

  def black
    @black
  end

  def to_s
    convert_to_s
  end

  def attack?
    same_row? || same_column? || diagonal?
  end

  private

  def check_error?
      raise ArgumentError if @black == @white || (@black + @white).any? { |i| i > 7 }
  end

  def same_row?
    @white.first == @black.first
  end

  def same_column?
    @white.last == @black.last
  end

  def diagonal?
    x_value == y_value
  end

  def x_value
    (@white.first - @black.first).abs
  end

  def y_value
    (@white.last - @black.last).abs
  end

  def convert_to_s
    place_piece(@white, 'W')
    place_piece(@black, 'B')
    @board.map do |rows|
      rows.join(" ")
    end.join("\n")
  end

  def place_piece(position, color)
    @board[position.first][position.last] = color
  end
end
