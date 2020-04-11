=begin
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

=end

=begin
Problem: Ask for six integers from user. Store the six integers. Output a message saying whether six integer is included in first 5.
Examples: All numbers are whole integer (strings). No invalid input examples shown. Each program display prompt has 1st, nd, rd, etc.
Display output final answer is in an array.
Data structure: Input string version of integers (gets turns input to string). Output required array and include/not include statement.
Algorithm: prompt user to input first integer. Append to an empty array. Repeat sequence for 5 numbers. 
For user sixth input stores user inoput in a variable. Call the .include?(sixth_num) method on the array. If evaluates to true
then print it DOES appear in array. IF include?(sixth_num) evaluates to false print it DOES NOT APPEAR in array.
=end


def array_checker
  array_of_five = []
  
puts "Enter first integer: "
input1 = gets.chomp.to_i
array_of_five << input1
puts "Enter second integer: "
input2 = gets.chomp.to_i
array_of_five << input2
puts "Enter third integer: "
input3 = gets.chomp.to_i
array_of_five << input3
puts "Enter fourth integer: "
input4 = gets.chomp.to_i
array_of_five << input4
puts "Enter fifth integer: "
input5 = gets.chomp.to_i
array_of_five << input5

puts "Enter final integer: "
final_integer = gets.chomp.to_i

if array_of_five.include?(final_integer)
  puts "The integer #{final_integer} DOES appear in #{array_of_five}."
else
  puts "The integer #{final_integer} DOES NOT appear in #{array_of_five}."
end

end


array_checker
