# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']
arr.map! { |el| el.to_i}
p arr.sort { |x,y| y<=>x }