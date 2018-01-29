# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  
  if arr.length != 0
    arr.each{ |a| sum += a}
  end
  
  return sum
end


def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]

  else
    first = arr[0]
    second = arr[1]
    arr.each{ |a|
      second = first && first = a if a > first
      second = a if a > second && a < first
    }
    return first + second
  end
end

def sum_to_n? (arr, n)
  arr.combination(2).to_a.each{ |a, b| 
    if a+b == n
      return true
  }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
