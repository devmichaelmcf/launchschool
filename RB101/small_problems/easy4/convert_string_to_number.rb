=begin
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Learning note: 

=end

=begin
def string_to_integer(string)
  num_array = string.chars.map do |element|
    case element
      when "1"
        then 1
      when "2"
        then 2
      when "3"
        then 3
      when "4"
        then 4
      when "5"
        then 5
      when "6"
        then 6
      when "7"
        then 7
      when "8"
        then 8
      when "9"
        then 9
      when "0"
        then 0
    end
  end
  
  
  value = 0
  
num_array.each { |digit| value = 10 * value + digit }
  value
end
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


p string_to_integer("1234567890")

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570