def calc arr, limit
  seq = (1..limit-1).select do
  |n| arr.map { |m| n % m == 0
  }.reduce { |r, e|  e or r}
  end
  return seq.reduce(:+)
end

puts calc [3, 5], 1000
