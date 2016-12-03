# problem-15
# [tau@sigma problem-15]$ ruby solution-1.rb 
# 137846528820

def calc_routes m, n
  if m[0] == n[0]
  return 1
  elsif m[1] == n[1]
  return 1
  end

  count = 0
  r0 = [m[0] + 1, m[1]]
  count += calc_routes(r0, n) 

  r1 = [m[0], m[1] + 1]
  count += calc_routes(r1, n) 

  return count 
end


v0 = (1.. 21).map { |col|
calc_routes [1, 1], [10, col] }

v1 = (1.. 21).map { |col|
calc_routes [11, col], [21, 21] }

solution = (0..20).map { |i|
v0[i] * v1[i]}.reduce(:+) 

puts solution

