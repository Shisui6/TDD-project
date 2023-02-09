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
end
