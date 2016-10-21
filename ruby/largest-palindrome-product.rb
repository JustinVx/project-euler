puts "Problem 4"
start_time = Time.now

def product_of(first_number, second_number)
  return first_number * second_number
end

def is_palindrome?(product)
  product_length = product.to_s.length.to_i
  product_string = product.to_s
  limit = product_length / 2
  i = 1
  while product_string[-1+i] == product_string[product_length-i]
    i += 1
    if i > limit
      return true
    end
  end
  return false
end

largest_product = 0
for a in 100..999
  for b in 100..999
    if is_palindrome?(product_of(a, b))
      if product_of(a, b) > largest_product
        largest_product = product_of(a, b)
        largest_a = a
        largest_b = b
      end
    end
  end
end
puts "#{largest_a} * #{largest_b} = #{largest_product}"
finish_time = Time.now
puts "Total time: #{finish_time - start_time} s"
