def prompt(message)
  Kernel.puts "=> #{message}"
end

def valid_number?(number)
number.to_s.to_i == number # REFACTORED CODE. Different due to changing input to_i before
# number.to_i() != 0     ORIGINAL CODE
end

def operation_to_message(op)
  case op
  when "1"
    'Adding'
  when "2"
    'Subtracting'
  when "3"
    'Multiplying'
  when "4"
    'Dividing'
  end
end

number1 = nil
prompt("Welcome to the calculator! Enter your name: ")
name = ''
    loop do
      name = Kernel.gets.chomp
      if name.empty?
        prompt("Make sure to use a valid name.")
      else
        break
      end
    end

    loop do
      prompt("Hi #{name}.")
      loop do
        prompt("Please enter the first number: ")
        number1 = Kernel.gets().chomp().to_i
        if valid_number?(number1)
          break
        else
          prompt("Hmmm...that number doesn't look like a valid integer")
        end
      end

      number2 = nil
      loop do
        prompt("Please enter the second number: ")
        number2 = Kernel.gets().chomp().to_i
        if valid_number?(number2)
          break
        else
          prompt("Hmmm...that number doesn't look like a valid integer")
        end
      end
    operator_prompt = <<-CCG
      "What operation do you want to perform?
      1) Addition
      2) Subtraction
      3) Multiplication
      4) Division "
    CCG


prompt(operator_prompt)
operator = nil
loop do
    operator = Kernel.gets().chomp()
     if %w(1 2 3 4).include?(operator)
       break
     else
       prompt("You must choose 1, 2, 3, 4")
     end
end
prompt("#{operation_to_message(operator)} the two numbers...")

result = case operator 
         when '1'
         number1.to_i() + number2.to_i()
         when '2'
         number1.to_i() - number2.to_i()
         when '3'
         number1.to_i() * number2.to_i()
         when '4'
         number1.to_f() / number2.to_f()
         end
prompt("The result is #{result}.")
prompt("Do you want to perform another calculation? (Y to calculate again)")
answer = Kernel.gets.chomp
      break unless answer.downcase.start_with?("y")
    end
    prompt("Thank you for using the calculator. Goodbye :-)")
