class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{remaining_beverages(number).capitalize} #{container(number)} of beer on the wall, #{remaining_beverages(number)} #{container(number)} of beer.\n#{action(number)}, #{remaining_beverages(next_run(number))} #{container(next_run(number))} of beer on the wall.\n"
  end

  def next_run(num=0)
    if num == 0
      99
    else
      num - 1
    end
  end

  def action(num = 0)
    if num == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end

  def remaining_beverages(num)
    if num == 0
      "no more"
    else
      num.to_s
    end
  end

  def pronoun(num)
    if num == 1
      "it"
    else
      "one"
    end
  end

  def container(num)
    if num == 1
      "bottle"
    else
      "bottles"
    end
  end

end
