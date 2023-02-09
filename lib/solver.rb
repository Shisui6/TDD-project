class Solver
  def factorial(num)
    raise 'Cannot factorize negative numbers' if num.negative?

    if num.zero?
      1
    else
      result = 1
      (1..num).each do |number|
        result *= number
      end
      result
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num.to_s
    end
  end
end
