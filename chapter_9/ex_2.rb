#Same as above, but only print out values greater than 5.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each do |num|
if num > 5
p num
else
next
end
end