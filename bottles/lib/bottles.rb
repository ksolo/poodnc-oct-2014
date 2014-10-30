class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.\nTake #{pronoun(number)} down and pass it around, #{remaining_beverages(number - 1)} #{container(number - 1)} of beer on the wall.\n"
    end
  end

  def remaining_beverages(num=0)
    if num == 0
      "no more"
    else
      num.to_s
    end
  end

  def pronoun(num=1)
    if num == 1
      "it"
    else
      "one"
    end
  end

  def container(num=:something)
    if num == 1
      "bottle"
    else
      "bottles"
    end
  end

end
