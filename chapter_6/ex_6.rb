=begin You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
What is the problem and how can it be fixed?
=end

#The problem was you need to enter an integer as a position 
#to add the value of "jody" NOT another string.
#To fix this error and presuming the person wanted "jody" at 
#"margaret" position AND to also keep "margaret" in the array.
#You would change the method to: names.insert(3, "jody")

#Actual answer showed a simple reassignment of value at index 3.
