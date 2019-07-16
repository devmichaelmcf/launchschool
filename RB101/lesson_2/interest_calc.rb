# TEST DATA below
# p = 60000 #loan amount.
# n = 120 #duration in months.
# j = 0.01 # If APR is 12, monthly interest is 0.01/1% compounded added monthly.
# m monthly repayment is 860, crosschecked with online calculator.

# m = p * (j / (1 - (1 + j)**(-n)))

def prompt(string)
puts "=> #{string}"
end

def valid_number?(num)
num == num.to_i.to_s
end

def valid_float?(num)
num == num.to_f.to_s
end

loop do #outer loop start

  prompt("Hello and welcome to the mortgage calculator!")
  prompt("This program will require you to input: 
  ----------------------------------------
  1) The total loan amount in full pounds.
  ----------------------------------------
  2) The APR rate as a percentage.
  ----------------------------------------
  3) The loan duration in years.
  ----------------------------------------")
    loan_string = ""  

    loop do
      prompt("Enter loan amount in whole pounds(£): ")
      loan_string = gets.chomp
      if valid_number?(loan_string)
        break
      else
        prompt("Invalid input! Enter whole pounds(£). e.g. 250000")
      end
    end

    loan_integer = loan_string.to_i

    apr_string = ""
    loop do
      prompt("Please enter APR % rate (including the decimal point). eg 12.4 or 9.0")
        apr_string = gets.chomp
      if valid_float?(apr_string)
        break
      else
        prompt("Invalid input. Enter APR decimal. eg. 12% APR please input 12.0")
      end
    end

    apr_float = apr_string.to_f
    monthly_interest_fullnum_float = apr_float / 12
    monthly_interest_decimal = monthly_interest_fullnum_float / 100
# REMEMBER TO CHECK INPUT. Monthly interest 
# monthly interest input is the decimal version (0.01 or 0.003)

    duration_string =""
    loop do
      prompt("Please enter the repayment period in years. e.g. 12 years 6 months as 12.5")
      duration_string = gets.chomp
      if valid_float?(duration_string)
        break
      else
        prompt("Invalid input. Enter years including decimal place. e.g. 10.0 if 10")
      end
    end
  duration_months_float = duration_string.to_f * 12

# p = 60000 #loan amount.
# n = 120 #duration in months.
# j = 0.01 # If APR is 12, monthly interest is 0.01/1% compounded added monthly.
# m monthly repayment is 860, crosschecked with online calculator.

  p = loan_integer
  j = monthly_interest_decimal
  n = duration_months_float
  monthly_repayment = p * (j / (1 - (1 + j)**(-n)))

  prompt("Your monthly repayment amount is £#{monthly_repayment.round(2)}. Sorry, who needs to eat anyway ;-P")
  prompt("Do you wish to calculate another mortgage repayment? 
  Press 'y' to repeat or any key to exit.")
  to_continue = gets.chomp.downcase
  
    unless to_continue == "y"
      break    #break condition for outer loop to escape all loops
    end

  end #outer loop end

puts "Thanks for using the mortgage calculator. Goodbye :-)"
