=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

Problem: Get age of user. Set age variable. Get desire retirement age. Set working years variable (retirement age - age).
Examples: strings stating whole years based on current year (do we want this to be a constant set to something in the time.Class)
Data structure: variables with age value. Working year value.
Algorithm: Get user input of age. Change to integer. Set variable to age value.
Get user input of retirement age. Change to integer. Set working years variable to retirement age - age.
Display string displaying current year and retirement year (current year + working age). Display working years amount..
=end

def when_will_I_retire
  current_year = Time.new.year

  puts "What is your age?"
  age_integer = gets.chomp.to_i

  puts "At what age would you like to retire?"
  retirement_age = gets.chomp.to_i

  working_years_left_integer = retirement_age - age_integer

  puts "It's #{current_year}. You will retire in #{current_year + working_years_left_integer}.
  You only have #{working_years_left_integer} years of work to go!"

end

when_will_I_retire