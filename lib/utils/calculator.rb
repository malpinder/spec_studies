class Calculator

  def multiply(a, b)
    a.to_f * b.to_f
  end

  def divide(a, b)
    a.to_f / b.to_f
  end

  def store(number)
    @stored = number.to_f
  end

  def stored
    @stored || 0.0
  end

end