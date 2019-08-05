# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

hash = {}
counter = 0
alphabet = ('A'..'Z').to_a + ('a'..'z').to_a


loop do
break if counter == alphabet.size

current_letter = alphabet[counter]

frequency_of_current_letter = statement.scan(current_letter).count


hash[current_letter] = frequency_of_current_letter  


counter += 1

end

hash.delete_if { |key, value| value == 0 }

p hash



#example return is: 
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

=begin 
Understand the Problem	
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)

Examples/Test Case	Validate understanding of the problem

Data Structure	How we represent data that we will work with when converting the input to output.

Algorithm	Steps for converting input to output

Code with Intent	Code
=end