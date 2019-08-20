
def factors(number)
  divisor = number
  factors = []
while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end
  factors
end

puts factors(4)

# Bonus 1
# What is the purpose of the number % divisor == 0 ?

# To check it is a factor. If original number (20) can be divided by divisor (10) with 0 remainder after the modulo operation then it means it IS a factor
# and can therefor be added to the factors array.

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?

# Second to last line is to ensure that the return value of the method is the full array of numbers rather than an unintentional return value of line 7 
# conditional statement (nil).