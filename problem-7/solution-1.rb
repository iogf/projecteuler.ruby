# By listing the first six prime numbers: 
# 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.
# What is the 10 001st prime number?

class Prime
  include Enumerable
  def self.is_prime? num
    return true if num == 2
    sqrt = Math.sqrt(num)
    lim  = sqrt.to_i + 1
    (2..lim).all? {|x| 
    num % x != 0}
  end

  def each
    count = 2
    loop { yield count if 
    Prime.is_prime? count
    count += 1}
  end
end

prime = Prime.new
n     = prime.each_with_index do
|n, idx| break n if idx == 10000
end

puts n
