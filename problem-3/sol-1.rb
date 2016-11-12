# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime? n
  m = Math.sqrt(n).to_i
  2.upto(m) { |i|
  if n % i == 0 then
  return false 
  end }
  return true
end

PRIME = 600851475143
lim   = Math.sqrt(PRIME).to_i

e = lim.downto(2).detect do
|n| prime? n and PRIME % n == 0
end

puts e
