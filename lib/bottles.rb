class Bottles

  LAST_VERSE = "No more bottles of beer on the wall, " +
                "no more bottles of beer.\n" +
                "Go to the store and buy some more, " +
                "99 bottles of beer on the wall.\n"

  def song
    verses(99, 0)
  end

  def verse(n)
    return LAST_VERSE if n == 0
    song_verse = "#{n} #{bottle_s(n)} of beer on the wall, " +
    "#{n} #{bottle_s(n)} of beer.\n" +
    "Take #{last_one?(n)} down and pass it around, " +
    "#{no_more?(n-1)} #{bottle_s(n-1)} of beer on the wall.\n"
  end 

  def verses(start, finish) 
    start.downto(finish).map do |n|
      verse(n) 
    end.join("\n")
  end

  def bottle_s(n)
    n == 1 ? "bottle" : "bottles"
  end

  def no_more?(n)
    n > 0 ? n : "no more"
  end

  def last_one?(n)
    n == 1 ? "it" : "one"
  end
end