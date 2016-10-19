puts "Answer to problem 2"

def sum_of_even_fibonacci_numbers_below(does_not_exceed)
  current_sum_of_even_fibonacci_numbers = 0
  i1 = 1
  i2 = 2
  while i2 < does_not_exceed
    if i2 % 2 == 0
      current_sum_of_even_fibonacci_numbers += i2
    end
    new_i = i1 + i2
    i1 = i2
    i2 = new_i
  end
  return "The sum of the even fibonacci numbers below " + does_not_exceed.to_s + " is " + current_sum_of_even_fibonacci_numbers.to_s + "!"
end

puts sum_of_even_fibonacci_numbers_below(4000000000)
