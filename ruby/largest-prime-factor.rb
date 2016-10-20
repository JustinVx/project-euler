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

def prime_factors_of(number)
  start_time = Time.now
  for i in 2..Math.sqrt(number)
    if is_a_prime_number(i)
      if number % i == 0
        puts i
      end
    end
  end
  finish_time = Time.now
  puts "Time to find factors: #{finish_time - start_time} s"
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


def find_largest_prime_number_of(number)
  number.downto(2) do |i|
    if is_a_prime_number(i)
      return i
    end
  end
end

def find_largest_prime_factor_of(number)
  start_time = Time.now
  if number
    number.downto(2) do |i|
      if is_a_prime_number(i)
        if number % i == 0
          finish_time = Time.now
          puts "Time to find largest prime: #{finish_time - start_time} s #{i}"
          return i
        end
      end
    end
  end
end

# Any even number, which is not 2 is not a prime!
# Use a prime sieve to greatly increase the performance of your prime testing algorithm.

def find_largest_prime_factor_of2(number)
  highest_number = 0
  start_time = Time.now
  #if number % 2 != 0 || number == 2
    #for i in 2..Math.sqrt(number)
    puts "Square root: #{Math.sqrt(number)}"
    for i in 2..number
      if is_a_prime_number(i)
        if number % i == 0
          highest_number = i if i > highest_number
        end
      end
    end
  #end
  finish_time = Time.now
  puts "Time to find all: #{finish_time - start_time} s #{highest_number}"
  return highest_number
end

#puts find_largest_prime_factor_of(13195)
#puts find_largest_prime_factor_of2(13195)
#puts prime_factors_of_using_prime_function(851475143)
prime_factors_of(13195)
puts largest_prime_factors_of(600851475143)

#13195
#600851475143
