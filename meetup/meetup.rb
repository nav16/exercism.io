require 'date'

class Meetup

  DAYS = {
    :sunday => 0,
    :monday => 1,
    :tuesday => 2,
    :wednesday => 3,
    :thursday => 4,
    :friday => 5,
    :saturday => 6
    }.freeze

  POSITIONS = {
    :first => 1,
    :second => 2,
    :third => 3,
    :fourth => 4
    }.freeze

  def initialize(month, year)
    @month, @year = month, year
  end

  def day(day, position)
    get_date(DAYS[day], position)
  end

  private

  def get_date(day, position)
    case position
    when :teenth
      teenth_day(day)
    when :last
      last_day(day)
    else
      week_day(day, position)
    end
  end

  def week_day(day, position)
    date = Date.new(@year, @month)
    POSITIONS[position].times do
      while(date.wday != day)
        date = date.next_day
      end
      date = date.next_day
    end
    date.prev_day
  end

  def last_day(day)
    date = (@month == 12 ? Date.new(@year, @month, 31) : Date.new(@year, @month + 1).prev_day)
    until(date.wday == day) do
      date = date.prev_day
    end
    date
  end

  def teenth_day(day)
    date = Date.new(@year, @month)
    until(date.wday == day && date.mday.between?(13,20)) do
      date = date.next_day
    end
    date
  end
end
