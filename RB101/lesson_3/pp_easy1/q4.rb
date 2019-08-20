numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)

numbers = [1, 2, 3, 4, 5]

numbers.delete(1)

# delete() deletes all occurances of the argument from the method caller. So in above example it deletes all instances of integer 1 from array. Returns the 
# deleted items.

# delete_at() deletes the item at the index stated by the argument. e.g numbers.delete(1) deleted the item from index slot 1. In this examp e the integer 2.

