# Write a while loop that takes input from the user, performs an action, and only 
# stops when the user types "STOP". Each loop can get info from the user.

puts "Enter something: "
user_input = gets.chomp

while user_input != "STOP"
  puts "Thanks for entering #{user_input}. Let's go around again "
  puts "Enter something: "
  user_input = gets.chomp
end