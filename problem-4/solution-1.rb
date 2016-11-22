# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


def palindrome_sequence
  count = 1
  while true do
  m = count.to_s
  n = m.reverse
  yield(m + n)

  (0..9).each { |x|
  yield(m + x.to_s + n)}
  count = count + 1
  end
end

def is_prod n_digs, seq
  len = n_digs * 2
  seq = seq.take_while {
  |x| x.length <= len + 2}

  seq = seq.select { |x| 
  x.length == len or 
  x.length == (len - 1) and
  (10 ** (n_digs - 1)..10**(n_digs)).any? { 
  |n| x = x.to_i 
  x % n == 0 and 
  (x/n).to_s.length == n.to_s.length}}
  return seq
end

x = to_enum(:palindrome_sequence)
puts is_prod(3, x).last


