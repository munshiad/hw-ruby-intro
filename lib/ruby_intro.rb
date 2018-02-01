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
  arr.combination(2).to_a.each do |a, b| 
    if a + b == n
      return true
    end
  end
  return false
end

# Part 2

def hello name
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s.match(/^[b-df-hj-np-tv-z]/i) != nil
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    s.to_i(base=10) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (isbn =="" || price <= 0)
      raise ArgumentError
    end
    @price = price
    @isbn = isbn
  end
  #set
  def isbn=(isbn)
    @isbn = isbn
  end
  #set
  def price=(price)
    @price = price
  end
  #get
  def isbn
    @isbn
  end
  #get
  def price
    @price
  end
  def price_as_string
    return format("$%.2f",@price)
  end

end

