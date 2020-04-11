=begin
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. 
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, 
or false if it is not a leap year.

Problem: Take any positive integer. Run a certain mathematical operations. Return a boolean value of true or false if % 100 etc == 0 &&.
Examples: input is an integer. output is a boolean. 
Data structure: integer is fine as necessary operations can be done on data type of integer.
Algorithm: Set variable to argument entered. IF the integer % 4 == 0 (if a leap year) unless integer % 100 == 0 (means not a leap year) 
=end

def leap_year?(num)
  if num % 400 == 0
    true
  elsif num % 100 == 0
    false
  else num % 4 == 0
  end
end



p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
