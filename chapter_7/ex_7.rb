#Given the following code..
#What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#There is no difference between the hashes created.
#We set a variable x to "hi there".
#In my_hash we set a SYMBOL x as key, and added "some value" as a value.
#In my_hash2 we set a SYMBOL x using OLD notation rockets => to a string.
#The original x variable in unaltered as it was just regular assignment, and
#not a symbol.

#CORRECTION/Learning point. my_hash answer correct, but my_hash2 answer incorrect as 
#x was NOT a symbol here but the string that the variable x was pointing to.
#Thing to nots, a variable can't be used as a key only the value of the variable.
#Also, I confused rockets => with symbol creation. NOT symbol creation. 
#Instead it's just a key pointing to a value. 
