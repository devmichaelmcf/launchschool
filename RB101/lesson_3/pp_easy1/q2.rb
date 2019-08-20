=begin Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

1. what is != and where should you use it?
2. put ! before something, like !user_name
3. put ! after something, like words.uniq!
4. put ? before something
5. put ? after something
6. put !! before something, like !!user_name

Difference between ! and ? is:
The syntax ! is used as 'NOT' symbol in that it negates what follows it. e.g. !true would equal false. !number means 'is not number'.
The ! symbol AFTER a word can highlight that this method can mutate the object that it is called on. eg. It can  make an object keep the 
same objectID but a different content which can effect all other variables pointing at the mutated object. Not all methods that mutate have 
the ! symbol after there name though. Methods like .pop or << mutate the original object and lack that symbol.

1. != means the same as 'is NOT equal to' and should be used in comparison operations. eg. 3 != 5 (3 does not equal 5. Which evaulated to true. Where
as 5 != 5 evaluates to false as 5 equals 5). Probably used often in conditional flow statements.

2. The ! before !user_name is likely used as a condition which evaluates to true when the entry is anything else apart from user_name. e.g. NOT user_name.

3. 1 after uniq! highlights that this method MUTATES the original object. Not all mutating methods have this attached to them though.

4. Uncertain. If it is in the context of variable and a method call BEFORE something. e.g. the ARGUMENT of the method. 
Then this is general a method that will return a boolean value if the argument exists in the method caller. Such as numbers_array.include?(3) if
numbers_array has the integer 3 in it it will return true. 
#CORRECTION. Answer is ? before something is before ternary if statement eg. ? 'true side' : 'false side' 

5. ? after something generally means that the method will return a boolean value. e.g. .eql?(arg) include?(arg)

6. !! is a double negation. NOT NOT. e.g. !! true would be NOT NOT True. One not true is false, and second not turns false to true again. 
Useful for testing 'truthy' objects. A truthy object is NOY equal to true but its double negation equals true. eg. !!a=3 truthy object equals true.

=end