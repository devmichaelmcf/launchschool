# What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#This will out "THESE HASHES ARE THE SAME!" as content of te hashes ARE the
#same, the only difference is syntax style and ordering which would not affect equality.

# Interesting note: order does not matter when comparing equality in hashes as we rely
# on the key's to match equality.
# However, in array's order DOES matter when comparing equality as values are referenced
# by index.
