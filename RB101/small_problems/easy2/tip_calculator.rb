=begin 
Tip calculator
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

Problem: Create a method that asks for input. Accepts a bill integer and a percentage integer (or float possibly). Create a constant that is unit of currency.
Examples: Returns a float to one decimel place. Gives the value of original number times percentage. Percentage is given in whole numbers.
Data structure: variables and constants.
Algorithm: Ask user to input bill amount. Get user input. Check input is valid number. Esle repeat step. Set variable to this value. 
Ask for tip percentage and divide by 100 if a valid number is entered, repeat past steps.
Bill amount multiplied by percentage equal tip amount. Display tip amount. Display tip amount plus original amount. Ask if was to leave the program,
=end


=begin 
Tip calculator
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

Problem: Create a method that asks for input. Accepts a bill integer and a percentage integer (or float possibly). Create a constant that is unit of currency.
Examples: Returns a float to one decimel place. Gives the value of original number times percentage. Percentage is given in whole numbers.
Data structure: variables and constants.
Algorithm: Ask user to input bill amount. Get user input. Check input is valid number. Esle repeat step. Set variable to this value. 
Ask for tip percentage and divide by 100 if a valid number is entered, repeat past steps.
Bill amount multiplied by percentage equal tip amount. Display tip amount. Display tip amount plus original amount. Ask if was to leave the program,
=end

def tip_calculator
  tip_integers = 0
  bill = 0
  tip_percentage_as_a_decimel = 0

  puts "Welcome to the tip calculator program!"
  loop do
  
    loop do
      puts "What is the bill?"
      bill = gets.chomp
      break if bill == bill.to_i.to_s
      puts "Invalid input! Try again! Integers only!"
    end
    
    loop do
      puts "What is the tip percentage?"
      tip_integers = gets.chomp
      break if tip_integers == tip_integers.to_i.to_s
      puts "Invalid input! Try again! Integers only!"
    end

    tip_percentage_as_a_decimel = tip_integers.to_f / 100
    tip_amount = bill.to_f * tip_percentage_as_a_decimel

    puts "Your tip amount is $#{tip_amount.round(2)}."
    puts "Your final bill is $#{(bill.to_f * tip_amount).round(2)}."

  puts "Do you want to complete another tip calculation?"
  answer = gets.chomp
  break if answer.downcase.start_with?("n")
  
  end
end

tip_calculator