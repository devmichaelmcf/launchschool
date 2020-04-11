=begin
Mutation
What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
=end

# Array1 on line 7 appends every element of array1 into array2. SO at line 7 both array1 and array2 are identical.
# On line 8 the each methid is calling the mutating method upcase! on elements of the array starting with 'C' or 'S'.
# array1 values in the array are: Moe, Larry, CURLY, SHEMP. Harpo. CHICO, Groucho, Zeppo.
# array2 values are the same as array1 as both arrays point to the same objects and mutating one object in one array can change the values of the other array
# as they are both pointing to the same object.