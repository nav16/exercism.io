class BeerSong
  VERSION = 2

  def verse(number)
    return verse_0 if number == 0
    return verse_1 if number == 1
    return verse_2 if number == 2
    other_verse(number)
  end

  def verses(*number)
    lyric = ''
    number.each do |num|
    lyric << all_lyric
      lyric << "\n" if number.last != num
    end
    lyric
  end

  def lyrics
    all_lyric
  end

  private

  def other_verse(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
    "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
  end

  def verse_2
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def verse_1
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse_0
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def all_lyric(max = 99)
    lyric = ''
    (3..max).reverse_each do |num|
      lyric << other_verse(num)
      lyric << "\n"
    end
    lyric << verse_2 << "\n"
    lyric << verse_1 << "\n"
    lyric << verse_0
  end
end

puts BeerSong.new.verses(2, 0)
