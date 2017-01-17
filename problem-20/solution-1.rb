# n! means n × (n − 1) × ... × 3 × 2 × 1
# 
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!

class Integer
  def factorial
    (1..self).reduce(1, :*)
  end

  def digsum
    str = self.to_s
    arr = str.chars
    arr = arr.map(&:to_i)
    arr.reduce(:+)
  end
end

fact = 100.factorial
sum  = fact.digsum
puts sum
