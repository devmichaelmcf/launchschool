# Use the modulo operator, division, or a combination of both to take a 4 digit number and 
# find the digit in the: 
# 1) thousands place 2) hundreds place 3) tens place 4) ones place

num = 4567

ones_place = num % 10
tens_place = num % 100 / 10    # num % 100 leaves 67. divide 10 on 67 leaves 6
hundreds_place = num % 1000 / 100
thousands_place = num / 1000

puts thousands_place
puts hundreds_place
puts tens_place
puts ones_place