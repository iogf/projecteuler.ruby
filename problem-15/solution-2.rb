# problem-15
# [tau@sigma problem-15]$ ruby solution-2.rb 
# 137846528820

require 'matrix'

def calc_routes m, n
  if n[0] < m[0] or n[1] < m[1]
  return 0
  end

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

def calc_vec m, n
  (m[1]..n[1]).map { |i|
  calc_routes m, [n[0], i]}
end

def calc_mtx m, n
  (m[1]..n[1]).map { |i|
  (m[1]..n[1]).map { |j|
  calc_routes [m[0], i], [n[0], j]}}
end

x = calc_vec [1, 1], [2, 21]
a = Matrix.rows([x])

y = calc_mtx [2, 1], [2, 21]
b = Matrix.columns(y)

mtx = a * (b ** 19) 
puts mtx[0,0]/10

