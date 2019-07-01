# Take the folling array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

#....and turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map 
# and flatten methods, as well as String's split method.

arr = a.map do |pairs| pairs.split(" ")
end
p arr.flatten
