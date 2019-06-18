puts "Input your first name: "
first_name = gets.chomp.capitalize
puts "Input your last name: "
last_name = gets.chomp.capitalize
full_name = first_name + " " + last_name
puts "Hello there #{full_name}, welcome to Launch School!"
10.times do puts full_name end
