require "prime"

puts "Problem 3. We are working on it!"
puts "--------------"

def is_a_prime_number(number)
  for i in 2..number-1
    if number % i == 0
      return false
    end
  end
  return true
end

def prime_factors_of_using_prime_function(number)
  start_time = Time.now
  puts "--------"
  puts "The prime factors of #{number} are:"
  Prime.each(number) do |prime|
    if number % prime == 0
      puts prime
    end
  end
  puts "--------"
  finish_time = Time.now
  puts "Time to find factors using Prime function: #{finish_time - start_time} s"
end

def largest_prime_factors_of(limit)
  start_time = Time.now
  factor = 2
  while limit > factor
    if limit % factor == 0
      puts "1: #{factor}"
      num = limit / factor
      if is_a_prime_number(num)
        finish_time = Time.now
        puts "Time to find largest factor: #{finish_time - start_time} s"
        return num
      else
        puts "change limit: #{factor}"
        limit = num
      end
    end
    factor += 1
    puts "#{factor-1} + 1 = #{factor}"
    while !is_a_prime_number(factor)
      factor += 1
      puts "no prime: #{factor}"
    end
  end
end

puts largest_prime_factors_of(600851475143)

#13195
#600851475143
