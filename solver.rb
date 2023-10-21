class Solver
  def factorial(number)
    if number.negative?
      raise 'Cannot return a factorial for a negative number'
    elsif number.zero?
      1
    else
      (1..number).reduce(:*)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 5).zero?
      'buzz'
    elsif (number % 3).zero?
      'fizz'
    else
      number.to_s
    end
  end
end
