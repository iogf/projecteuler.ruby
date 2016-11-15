# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# Note: It demands the gem prime package.
# Install it with:
# gem install prime

require 'prime'

NUMBER = 600851475143
base   = Math.sqrt(NUMBER).to_i 
rst    = base.downto(2).detect do |n| 
Prime.prime? n and NUMBER % n == 0
end

puts rst
