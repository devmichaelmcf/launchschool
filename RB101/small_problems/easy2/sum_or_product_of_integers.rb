=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

Problem: Create a program that accepts user input as an integer. Then gets user input to perform a sum or product calculation on every whole number between 1 and number entered.
Examples: They sum and multiple the whole numbers from 1 up to and including the given number. Design of program looks like it data isn't entered via an argument to a methof 
but rather the variables are set DURING the running of the program after prompting for input.
Data structure: range object and conditional.
Algorithm: Display prompt for user to input an integer string. Set input string to an integer. Set a range object from 1 up to and including the input integer.
Display prompt for operation user input. Set input variable. 
If operation variable is 's' then (for a sum variable set to 0) for the range object call each on it and add and reassign variable. Dispaly final sum variable in output.
if operation variable is 'p' then (for a product var set to 0) for the range object call each on it and multiple and reassign variable. Dispaly final sum variable in output.

=end


def product_or_sum
  sum = 0
  product = 1
  user_operation = nil

  puts  "Please enter an integer greater than 0:"
  user_integer = gets.chomp.to_i
    
    loop do
      puts "Enter 's' to compute the sum, 'p' to compute the product." 
      user_operation = gets.chomp.downcase
      break if user_operation.include?("p") || user_operation.include?("s")
      puts "Invalid input!"
    end

  if user_operation == 's'
    (1..user_integer).each {|num| sum += num }
      puts "The sum of the integers between 1 and #{user_integer} is #{sum}."
  elsif user_operation == 'p'
    (1..user_integer).each {|num| product *= num}
      puts "The product of the integers between 1 and #{user_integer} is #{product}."
  end

end

product_or_sum