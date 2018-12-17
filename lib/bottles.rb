class Bottles

  def song
    verses(99,0)
  end

  def verses(from, to)
    @result = []
    (from - to + 1).times do |n|
      @result << verse(from - n)
    end
    @result.join("\n")
  end

  def verse(number)
    return normal_verse(number) if number > 1
    return one_verse if number == 1
    zero_verse if number == 0
  end

  private

  def first_sentence(number)
    "#{bottles(number)} of beer on the wall, #{bottles(number)} of beer."
  end

  def bottles(number)
    if number == 0
      return "no more bottles"
    end

    "#{number} " + "bottle".pluralize(number)
  end

  def normal_verse(number)
    <<-VERSE
#{first_sentence(number)}
Take one down and pass it around, #{bottles(number-1)} of beer on the wall.
    VERSE
  end

  def one_verse
    <<-VERSE
#{first_sentence(1)}
Take it down and pass it around, #{bottles(0)} of beer on the wall.
    VERSE
  end

  def zero_verse
    result = <<-VERSE
#{first_sentence(0)}
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    result.capitalize
  end
end
