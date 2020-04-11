=begin
Use a dictionary as a lookup table to calculate and store the square roots of the first 100 positive integers.  
The math library contains the sqrt function – the function call math.sqrt( 100 ) will return 10.0.  
Once the lookup table is created, then repeatedly ask the user for numbers between 1 and 100 and write out the square root of the number by using 
the lookup table you have created. Ensure the numbers entered by the user are in range.
=end

hash = {}
user_input = nil
answer = nil

for i in 1..100
  hash[i] = Math.sqrt(i)
end


loop do
  puts "Please enter an integer between 1 and 100!"
  
  user_input = gets.chomp.to_i
    if (1..100).include?(user_input)
      puts "The square root of #{user_input.to_i} is #{hash[user_input]}."
    elsif user_input >= 101 || user_input <= 0
    puts  "Invalid input!"
    end
    
    puts "Do you want to do another calculation?"
    answer = gets.chomp
    break if answer.start_with?('n')
end