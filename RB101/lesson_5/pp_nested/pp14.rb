# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. 
#The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
new_arr = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p new_arr

# Where my attempt differed and where I went wrong was: I tried to used the select method wrongly and tried to select the value for transformation via iterating
# through the inner hash and only having select return a truth value with 'fruit'.It was much, much easier to just use if/else within the block to do seperate actions.
# I also erred in trying to run a second iteration on everything when the modification of the vegetable value was straightforward.
# i also DID NOT NEED TO ITERATE OVER THE INNER HASH as my default position. I needed to access particular values and keys but I didn't need to iterate over ALL
# values. I forgot that the map method automatically returned an array and that keys aren't exactly the same as true values so don't need to be removed. Good learning 
# experience.
# point of emphasis. Use conditional if/else when two clear actions to perform in a block. Remember map returns array. Remember keys aren't values.




# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
=begin
iterate over hsh variable
within that iteration iterate over inner hash
if that iteration type is fruit (then access the colors key and capitalize colors with map (or iterate over that tiny array and capitilize each if not possible from out ))
if that iteration type is veg (then access the size key and upcase it's value)
input = hash 
(key(key[color array]))

output = array. 
if type == veg return size of veg uppercase
  or if fruit return colors
=end