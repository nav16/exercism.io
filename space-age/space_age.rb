class SpaceAge

  def initialize(input_age)
    @input_age = input_age.to_f
  end

  def seconds
    @input_age
  end

  def on_earth
    age_on_earth
  end

  def on_mercury
    age_on_earth / 0.2408467
  end

  def on_venus
    age_on_earth / 0.61519726
  end

  def on_mars
    age_on_earth / 1.8808158
  end

  def on_jupiter
    age_on_earth / 11.862615
  end

  def on_saturn
    age_on_earth / 29.447498
  end

  def on_uranus
    age_on_earth / 84.016846
  end

  def on_neptune
    age_on_earth / 164.79132
  end

  private

  def age_on_earth
    @input_age / 31557600
  end
end
