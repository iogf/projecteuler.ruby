# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.



def find limit 
  c   = 1
  sum = 0
  until c >= limit do 
    if c % 3 == 0 or c % 5 == 0 
      sum = sum + c
    end
    c = c + 1
  end

  return sum
end

puts find 1000


