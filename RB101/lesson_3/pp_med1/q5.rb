limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

#Code changed to add the limit varible in as an additional argument as original iteration the variable limit (which was needed INSIDE the method defintion, 
# wasn't able to be 'seen' in the inner scope of the method.)