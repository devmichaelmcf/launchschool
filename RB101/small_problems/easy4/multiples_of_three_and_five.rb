=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. 
For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Problem: From an entered argument. Create a collection from 1..variable integer. Divide everything by 3 || 5. Count occurances. Return occurances.
Examples: integers only goet counted ONCE. If an integer is 15 (divisable by 3 and 5) then only counted once still.
Data structures: array and counter.
Algorithm: For the variable num value create an array for 1..num. Initialize an empty counter = 0. 
Iterate over the array. If current value % 3 == 0 OR current value % 5 == 0 then add one to counter.
Return counter value.
=end

def multisum(num)
  multiple_array = []
  total = 0
  
    (1..num).to_a.each do |element|
    multiple_array << element if element % 3 == 0 || element % 5 == 0
  end
  
    multiple_array.each do |element|
      total += element
    end
    total
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168