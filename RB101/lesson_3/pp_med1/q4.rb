# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, 
# then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, 
# other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# MY ANSWER: The above method definition uses a mutating method << to change the original element and everything that refers to original. Use in buffer1 seems
# fine.
# CORRECTION: The << method will change the array that was passed in as an argument (and likely used outside this method. COuld cause confusion).

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# MY ANSWER: In buffer2 the buffer variable reasignment is NOT mutating the original buffer but setting buffer to a new value in different physical 
# memory space. Both buffer1 and buffer2 examples seem fine as mutating or non-mutating forms don't seem to have a strong impact in these examples.

# CORRECTION: This was the better choice as reasignment did not change the orignal array variable 'buffer' that was passed in.