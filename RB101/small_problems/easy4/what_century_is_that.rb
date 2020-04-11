=begin Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and 
ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Problem: Is to turn the integer (that represents a year) given and turn it into a string representation of the accurate plain English version. eg. 22nd century.
Examples: Integer input. String output (integer as string, plus a prefix like nd, st, th).
Data structure: 
Algorithm: Create century method that will return the correct century from an original integer. e.g. 2000 == 20 (as integer), 2001 == 21 (as integer). 
Get integer, calculate correct century integer that we will concatinate with the prefix. variable = 2000/100 = 20 + 1, unless 2000 % 100 == 100 then century var -=1


Second algorithm: Take integer (that needs an accurate prefix concatinated). 
1 st,  2nd,  3rd,  4th,  5th, 6th, 10th
11 th, 12th, 13th, 14th, 15th, 16th, 20th
21 st, 22nd, 23rd, 24th, 25th, 26th, 30th
31 st, 32nd, 33rd, 34th, 35th, 36th, 40th

Rule: 
1 = st
2 = nd
3 = rd
elsif = 12, 12, 13 = th
else = th

Notes of Learning: Found it conceptially difficult to 
=end

def correct_century_from_integer(num)
  century = 0
  
century = num / 100 + 1
if num % 100 == 0
  century -= 1
end
  century
end


p correct_century_from_integer(2001)

def suffix_adder(number)
  num_and_suffix = ""
  return 'th' if [11, 12, 13].include?(number % 100)
  last_digit = number % 10
    if number == 11 || number == 12 || number == 13
      num_and_suffix = "th"
    elsif last_digit == 1
      num_and_suffix = "st"
    elsif last_digit == 2
      num_and_suffix = "nd"
    elsif last_digit == 3
      num_and_suffix = "rd"
    else 
      num_and_suffix = "th"
    end
  num_and_suffix
end
  



def century(orignal_integer)
  integer_century = correct_century_from_integer(orignal_integer)
  correct_suffix = suffix_adder(integer_century)
  
  integer_century.to_s + correct_suffix
end



p century(2000) #== '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
