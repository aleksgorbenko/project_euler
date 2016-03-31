=begin

===Largest prime factor===

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end

# method to see if the number is prime or not

def prime?(n)
  (2..(n-1)).each { |x| return false if n % x == 0 }
  true
end

# the problem is not yet solved, I am getting the right answer as a # part of the final array, but for some reason I am not getting the # right one.

prime_factor_arr = []
number = 600_851_475_143
x = 2

while x < (number / x)
  if number % x == 0 && prime?(x)
    prime_factor_arr << x
  end
  x += 1
end 

puts prime_factor_arr.last
puts prime?(prime_factor_arr.last)
puts prime_factor_arr


