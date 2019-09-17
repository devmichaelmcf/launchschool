# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

=begin
Problem: take an integer and a boolean. If the boolean is true the method should return half of the integer given. If false should return o.
Examples: integer and boolean. Output boolean. If boolean false always 0 returned. All integers given and returned. No boolean values.
Data structures: Integer values and conditional if/else statement.
Algorithm: Use conditional if/statement. If boolean -- true then return num / 2, else return o.
=end

def calculate_bonus(num, boolean_value)
  if boolean_value == true
  num / 2
  else 
  0
  end
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000