class School
  VERSION = 1

  def initialize
    @school = []
  end

  def grade(grade)

    # keeping code to remember nill issue in .map
    # @school.sort.map do |key, value|
    #   value if key == grade
    # end

    @school.sort.select{ |key, value| key == grade }.map do |key, value|
      value
    end

  end

  def add(value, key)
    @school << [key, value]
  end

  def to_h
    @school.group_by(&:first).map { |value, key| [value, key.map(&:last).sort] }.sort.to_h
  end

end
