# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.


def find limit 
  sum = 0
  for ind in 1..(limit - 1)
    if ind % 3 == 0 or 
    ind % 5 == 0 then 
    sum = sum + ind 
    end
  end

  return sum
end

puts find 1000




