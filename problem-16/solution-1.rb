# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2^1000?

x   = 2 ** 1000
x   = x.to_s
arr = x.each_char.map(&:to_i)
sum = arr.reduce(:+)
puts sum

