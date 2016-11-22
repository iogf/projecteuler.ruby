# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class Palindrome
  include Enumerable
  def each
    count = 1
    loop do
    m = count.to_s
    n = m.reverse
    yield(m + n)

    (0..9).each { |x| 
    yield(m + x.to_s + n)}
    count +=1
    end
  end
end

$digs = 3
seq   = Palindrome.new
seq   = seq.take_while do
|x| x.length <= $digs * 2 + 2
end

seq = seq.select do |x| 
x.length == $digs * 2 or 
x.length == ($digs * 2 - 1)
end

seq = seq.select do |x|
base = (10 ** ($digs - 1)..10**($digs))
base.any? { |n| 
x = x.to_i 
x % n == 0 and 
(x/n).to_s.length == n.to_s.length}
end

puts seq.last


