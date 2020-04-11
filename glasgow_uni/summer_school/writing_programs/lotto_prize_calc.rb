=begin
The lottery has six randomly selected winning numbers.  Each number is from one to thirty nine. Participants select six numbers, 
and those participants selecting three of the winning numbers wins £10.

Write a program which reads in a file selections.txt containing a row for every participant’s attempt.  
An attempt consists of a unique ID number, followed by a space and then the participant’s six numbers separated by commas.  
The program should prompt the user for the winning numbers, then determine and write out the ID numbers of all the winning rows. An example file is given below:

Problem: prompt the user for winning numbers (array of 6 integers). We have stored key value pairs of unique ID => [array]. If our numbers have 3 >= numbers from 
winning numbers array then return the key (unique ID) and the values (array of our selection).

Examples: one line. Not a string in plain English. Provides the unique ID AND an array.of the full winning string (string with at least three elements or more in 
common with the winning array).

Data structure: Hashes. winning numbers are probably in an array that is also the value of key value pair. Unique ID is the key.
stored past numbers a hash variable. Key = unique ID integer, values = an array of six integers.

Algorithm: loop and ask user for 6 integers. Append to a variable empty array. Store until needed. Break loop when array.length == 6. Don't allow any 0 based enteries 
as this will enforce integer validation (because string to integer returns zero also.)

Checking winning numbers to user_bought tickets.
We need to iterate over the all the values. If 3 or more of the array elements are included in the winning array then we need to select the array.
We can iterate over each bought ticket array. Set a counter to zero. We need to iterate over each element with EVERY element from winning ticket.



=end


bought_tickets = {
                   123 => [1, 2, 3, 4, 5, 6],
                   124 => [1, 22, 23, 24, 25, 36],
                   125 => [2, 22, 23, 27, 29, 32],
                   126 => [2, 5, 7, 9, 23, 27, 29],
                   127 => [3, 5, 7, 10, 30, 32, 34],
                   128 => [4, 5, 7, 9, 24, 25, 37 ]
                   }


winning_numbers = [1, 2, 3,]  #entered so don't have to do manual winning number loop below

array = []

p unique_id = bought_tickets.keys


  unique_id.each do |key|
    bought_tickets[key].select do |element|
    winning_numbers.include?(element)
    # change so selected based on > 3
    array << key
    end
  end

# 1) get keys, 2) use keys to access hash array and have an array to work on next. 

p array


=begin loop do 
  puts "Enter an integer between 1 and 39: "
  input = gets.chomp.to_i
    if input > 0 && input <= 39
      array << input 
    else # Originally conditional set to zero as string input and method call to_i in Ruby == 0
      puts "Invalid input! Enter integers between 1-39 only!"
    end
  break if array.length >= 6
  
end
=end







=begin
123 1,2,3,4,5,6
124 1,22,23,24,25,36
125 2,22,23,27,29,32
126 2,5,7,9,23,27,29
127 3,5,7,10,30,32,34
128 4,5,7,9,24,25,37
=end


bought_tickets = {
                   123 => [1, 2, 3, 4, 5, 6],
                   124 => [1, 22, 23, 24, 25, 36],
                   125 => [2, 22, 23, 27, 29, 32],
                   126 => [2, 5, 7, 9, 23, 27],
                   127 => [3, 5, 7, 10, 30, 32],
                   128 => [4, 5, 7, 9, 24, 25 ]
                   }


winning_numbers = [10,30,32,24,25,27]  #entered so don't have to do manual winning number loop below

array = []
hash_to_count_number_of_winning_numbers = {}

unique_id = bought_tickets.keys


  unique_id.each do |key|
    bought_tickets[key].each do |element|
      array << key if winning_numbers.include?(element)
    end
  end

p array

unique_id.each do |element|
  hash_to_count_number_of_winning_numbers[element] = array.count(element)
end




p hash_to_count_number_of_winning_numbers
greater_than_three = hash_to_count_number_of_winning_numbers.select do |element|
  hash_to_count_number_of_winning_numbers[element] >= 3
end

p greater_than_three