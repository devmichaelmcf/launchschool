=begin Write a program that takes a number from the user between 0 and 100 and reports back 
whether the number is between 0 and 50, 51 and 100, or above 100. 
=end

puts "Enter a number to check: "
user_input = gets.chomp.to_i

if user_input > 100
  puts "Your input was over 100"
elsif user_input >= 51 && user_input < 100
  puts "Your input was between 51 and 100"
elsif user_input <= 50 && user_input >= 0
  puts "Your input was between 0 and 50"
end