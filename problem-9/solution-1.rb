
def calc value
  arr0 = (1..value).map { 
  |i| i ** 2}

  arr1 = arr0.combination(2)
  arr2 = arr1.each { 
  |a, b| m = Math.sqrt (a + b)
  n = Math.sqrt a
  u = Math.sqrt b

  yield [u, n, m] if 
  m == m.floor and 
  n + u + m == 1000}
end

calc 1000 do |i|
prod = i.reduce(:*).to_i
puts "Product: #{prod}"
end
