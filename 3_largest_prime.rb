require 'prime'

def largest_prime(num)
  num.prime_division.flatten.max
end

puts largest_prime(600851475143)