def number_check(number)
case
when number < 0
puts "You cannot enter a negative number!"
when number <= 50
  puts "#{number} is between 0 and 50"
when number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end
end

puts "Enter a number to check between 0 and 100;  "
user_input = gets.chomp.to_i

number_check(user_input)
