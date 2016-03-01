class Triplet

  def self.where(options={})
    max_factor = options.fetch(:max_factor)
    min_factor = options.fetch(:min_factor, 1)
    sum = options.fetch(:sum, nil)
    triplets = generate_sides(min_factor, max_factor)
      .map { |sides| Triplet.new(*sides) }
      .select(&:pythagorean?)
    triplets = triplets.select { |triplet| triplet.sum == sum } if sum
    triplets
  end

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def sum
    @a + @b + @c if pythagorean?
  end

  def product
     @a * @b * @c if pythagorean?
  end

  def pythagorean?
    check_pythagorean
  end

  private

  def check_pythagorean
    @a ** 2 + @b ** 2 == @c ** 2
  end

  def self.generate_sides(min_factor, max_factor)
      [*(min_factor..max_factor)].combination(3).to_a
  end
end
