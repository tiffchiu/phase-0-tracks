# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # string.split(" ") convert to array
  # use .each to iterate over array values
  # set up an empty hash = {}
  # hash << 
  # example input (hash): carrots: 2, apples: 4, cereal: 8, pizza: 3
  # set default quantity: 0
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

def create_list(grocery_str)
    grocery_list = grocery_str.split(" ") # ["carrots", "apples", "cereal", "pizza"]
    grocery_hash = {}
    grocery_list.each do |food|
      grocery_hash[food] = 0
    end 
    grocery_hash
end 

puts create_list("carrots apples cereal pizza")
our_list = create_list("carrots apples cereal pizza")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: takes item name & optional quantity and adds them to existing hash
# hash[key] = value
# output: hash {"carrots" => 1}

def grocery_item_adder(grocery_list, item, qty)
    grocery_list[item] = qty
    grocery_list
end

puts grocery_item_adder(our_list, "cookies", 3)
puts grocery_item_adder(our_list, "lemonade", 2)
puts grocery_item_adder(our_list, "tomatoes", 3)
puts grocery_item_adder(our_list, "onions", 1)
puts grocery_item_adder(our_list, "ice cream", 2)


# Method to remove an item from the list
# input: list, item name
# steps: delete "lemonade" and hash value
# output: updated hash with correct keys/values

def grocery_item_deleter(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end

puts grocery_item_deleter(our_list, "lemonade")

# Method to update the quantity of an item
# input: item, new quantity, hash
# steps: Re-assign the quantity to the key
# output: updated hash

def current_list(grocery_list, item, qty)
  grocery_list[item] = qty
  grocery_list
end

puts current_list(our_list, "ice cream", 1)

# Method to print a list and make it look pretty
# input: hash
# steps: take each key-value pair and print them out
# output: string

def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

print_list(our_list)


# Reflection

# What did you learn about pseudocode from working on this challenge?
# Pseudocode can be really useful getting your initial thoughts together and making writing the code more manageable.

# What are the tradeoffs of using arrays and hashes for this challenge?
# We did not really run into any discussions of whether to use arrays or hashes as it made the most sense to go for a hash since there was a value associated with another.

# What does a method return?
# The last item that was called

# What kind of things can you pass into methods as arguments?
# Lists (arrays, hashes) and variables (integers, strings, boolean)

# How can you pass information between methods?
# You can store the information in variables outside of the methods

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I have a much better understanding of the idea of instance variables versus not having them, and the way to access information that might not seem very accessible in a method.
