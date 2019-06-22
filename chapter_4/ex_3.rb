puts "Enter a number to evaulate: "
number = gets.chomp.to_i
if number < 0
puts "#{number} is below zero. Enter a positive number."
elsif number > 100
puts number.to_s + " is greater than 100."
elsif number > 50
puts number.to_s + " is between 51 and 100."
else number > 0
puts number.to_s + " is between 0 and 50 "
end
