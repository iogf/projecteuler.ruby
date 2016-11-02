
def calc limit
  arr = (1..limit - 1).select do
  |n| n if n % 3 == 0 or n % 5 == 0
  end
end

puts (calc 1000).reduce(:+)
