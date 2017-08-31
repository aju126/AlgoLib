class Recursion

  def factorial(n)
    return 1 if n == 1
    n * factorial(n - 1)
  end

  def square(x, y)
    val = x
    return val if y == 1
    val = x * square(x , y - 1)
  end

  def fibonacci(val)
    @series ||= []
    fib(val)
    @series
  end

  def fib(n = 10)
    @val ||= 0
    if n <= 2
      @val = 1
    else
      @val = fib(n - 1) + fib(n - 2)
      @series << @val
    end
    @val
  end

  def reverse(number)
    rev(number)
  end

  private

  def rev(number)
    @str ||= ''
    @str << (number % 10).to_s
    rev(number / 10) unless number < 10
    @str.to_i
  end
end