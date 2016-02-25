class SpaceAge

  def initialize(input_age)
    @input_age = input_age
  end

  def seconds
    @input_age
  end

  def on_earth
    age_on_earth.round(2)
  end

  def on_mercury
    mercury_years = (age_on_earth / 0.2408467).round(2)
  end

  def on_venus
    venus_years = (age_on_earth / 0.61519726).round(2)
  end

  def on_mars
    mars_years = (age_on_earth / 1.8808158).round(2)
  end

  def on_jupiter
    jupiter_years = (age_on_earth / 11.862615).round(2)
  end

  def on_saturn
    saturn_years = (age_on_earth / 29.447498).round(2)
  end

  def on_uranus
    uranus_years = (age_on_earth / 84.016846).round(2)
  end

  def on_neptune
    neptune_years = (age_on_earth / 164.79132).round(2)
  end

  private

  def age_on_earth
    (@input_age.to_f/31557600.to_f)
  end
end
