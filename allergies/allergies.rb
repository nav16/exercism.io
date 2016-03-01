class Allergies

  SCORE = {
     "eggs" => 1,
     "peanuts" => 2,
     "shellfish" => 4,
     "strawberries" => 8,
     "tomatoes" => 16,
     "chocolate" => 32,
     "pollen" => 64,
     "cats" => 128
    }

  def initialize(score)
    @score = score
  end

  def allergic_to?(name)
    check_name(name)
  end

   def list
    SCORE.keys.select do |item|
      allergic_to?(item)
    end
  end

  private

  def check_name(name)
    true if @score & SCORE[name] != 0
  end
end

