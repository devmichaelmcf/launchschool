# Even Numbers
# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

def even_num
  (1..99).each { |num| puts num if num.even? }
end 

even_num