class Fibonacci
  def self.calculate(n)
    if n == 0
      return 0
    elsif n <= 2
      return 1
    else
      return self.calculate(n-2) + self.calculate(n-1)
    end
  end
end