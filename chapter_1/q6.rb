# Write a program that calculates the squares of 3 float numbers of your choosing and 
# outputs the result to the screen.

def sq_float_calc(float_num)
  sq = (float_num * float_num).round(1)
end

p sq_float_calc(4.3)
p sq_float_calc(6.13)
p sq_float_calc(124.34)
