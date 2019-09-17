=begin
Greeting a user
Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end

def greeting_a_user
  puts "Please enter your name: "
  user_input = gets.chomp
  
  if user_input.include?("!")
    puts "HI #{user_input.delete("!").upcase}. WHY ARE WE SHOUTING?"
  else
    puts "Hello #{user_input}."
  end
  
end

greeting_a_user
