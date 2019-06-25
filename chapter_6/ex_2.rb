=begin
# 1.
   arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
  
# 2.
   arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)

1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]
 
# Difficulty reaching this answer. Failed to realise that each
#method chain returns a VALUE that the next method is called 
#on. e.g. two things aren't being done at once, deleting two 
#values, only ONE thing. ONE return value 'found', then a
# method is acting on that single return value. 

=end
