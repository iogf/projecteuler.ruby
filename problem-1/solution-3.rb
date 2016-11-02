def mul? arr, num
  for ind in arr
    if num % ind == 0
      return true
    end
  end
  return false
end

def sum_mul arr, limit
  sum = 0
  for ind in 1..(limit - 1)
    if mul? arr, ind
      sum = sum + ind
    end
  end
  return sum
end

sum = sum_mul([3, 5], 1000)

puts sum


