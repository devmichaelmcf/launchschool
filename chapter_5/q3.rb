def subtract(num)
  if num == 0        # base case. Where the recursion stops.
    puts num
  else
    puts num
    subtract(num-1)  # recursive step. Call the method again and converging towards base case.
  end
end 

subtract(5)

# Learning point. I forgot to add the display puts method on line 5. So even though I was 
# executing a recursive step. I wasn't displaying the current number.