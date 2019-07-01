# Use Ruby's Array method delete_if and String method start_with? to delete all of the
#  words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word[0] =~ /s/ || word[0] =~ /w/ }  

# Use Ruby's Array method delete_if and String method start_with? to delete all of the 
# words that begin with an "s" in the following array.
