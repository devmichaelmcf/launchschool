# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# Factorial of 5 = 5 * 4 * 3 * 2 * 1

# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# Factorial of 5 = 5 * 4 * 3 * 2 * 1 totals 120

def factorial_calc(factorial)
  total = 1
  
  for num in 1..factorial
    total *= num
  end
  
  total
end

p factorial_calc(5)
p factorial_calc(6)
p factorial_calc(7)
p factorial_calc(8)
