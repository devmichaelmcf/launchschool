=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
Note: 1 square meter == 10.7639 square feet
Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet)
=end

=begin 
Problem: Needs to get user input twice. Multiple digits and return it to user as output.
Examplea: User input was in integers-style strings (but put will probably use float as output is in float). The output is a float stopped at two decimel places.. 
Data structure: variables holding width, length, metres_sq length and constant of sq feet.
Algorithm: Prompt user to input width amount, change to float and save in variable. Repeat with length. Nultiply both numbers and save in variable. Times variable by constant
to get feet sq area. Use method to give two decimel places.
=end


def area_calculator
  sq_ft_in_sq_metre = 10.7639
  puts "Enter length of room in metres: "
  length_m = gets.chomp.to_f
  puts "Enter width of room in metres: "
  width_m = gets.chomp.to_f
  area_m = width_m * length_m
  area_ft = area_m * sq_ft_in_sq_metre
  puts "The area of the room is #{area_m.round(2)} square metres (#{area_ft.round(2)} square feet)."
end

area_calculator