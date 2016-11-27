# The sum of the squares of the first ten natural numbers is,
# 
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten 
# natural numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first 
# one hundred natural numbers and the square of the sum.
# Solution:
# This problem prolly has a mathematical formulae for finding that difference
# but i decided to implement a trivial solution.

sum0 = (1..100).map do
|n| n ** 2
end

sum0 = sum0.reduce(&:+)

sum1 = (1..100).reduce(&:+)
sum1 = sum1 ** 2

puts(sum1 - sum0)

