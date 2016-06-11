
# Method to create a list
#     -define #create_list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#   -Create a keys based on the string input
#   -Value of keys would be the quantity needed of each key.
#   set default quantity
#   print the list to the console [can you use one of your other methods here?]
#   -call #print_method 
# output: [what data type goes here, array or hash?]
#     -hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
#     -turn item name input to a symbol at the end of the earlier hash
#     -quantity will be value of item name input.
# output:
#     -p updated grocery list using #print.

# Method to remove an item from the list
# input:
#     -Would be Key you are trying to delete
# steps:
#     -Delete key - value pair
# output:
#     -hash with the delete key-value pair gone.
#     -p undated grocery list using #print.

# Method to update the quantity of an item
# input:
#     -key
#     -new value
# steps:
#     -first we need to find the key
#     -then change the value of the key to the new quantity
# output:
#     -Updated hash with new quantity in item input.

# Method to print a list and make it look pretty
# input:
#     -Hash
# steps:
#     -Make sure list is readable
#     -list each item with quantity in the same line
#     -Make sure to add whitespace between each item key
# output:
#     -A prettyfied hash


def prettyfie_list(hash)
    puts "This is your current grocery list:"
    puts "\n"
    hash.each {|key, value| puts "#{key} quantity = #{value}" }
    puts "\n"
end

def create_list(str)
    $grocery_list = {}
    grocery_items = str.split(" ")
    grocery_items.each {|grocery_items| $grocery_list[grocery_items.to_sym] = 1}
    $grocery_list
    prettyfie_list($grocery_list)
end
create_list("lemonade tomatoes onions ice_cream")

def add_item(key, quantity)
    $grocery_list[key.to_sym] = quantity
end

def remove_item(key)
    $grocery_list.delete(key)        
end

def update_quantity(key, quantity)
    $grocery_list[key] = quantity
end

update_quantity(:lemonade, 2)
update_quantity(:tomatoes, 3)
update_quantity(:ice_cream, 4)

remove_item(:lemonade)
update_quantity(:ice_cream, 1)

prettyfie_list($grocery_list)

# Reflection:
# What did you learn about pseudocode from working on this challenge?
    # From working on this challenge I learned that pseudocode is a very
    # important factor when programming, mostly to yourself as a programmer/developer.
    # I also learned some better practices for pseudocoding such as refraining
    # from language-specific words while still writing detailed steps to 
    # your program. For my pairing session my pair, Kayden Williams, was the driver
    # during the pseudocoding process and it made me realize how to perfect my
    # own pseudocode since I honestly do not like how he writes his. I am not
    # saying there is anything wrong with his, I am just saying that through
    # watching him work on the pseudocode it has heled me figure out how to
    # write my own from now on, which I was not very good at before this
    # challenge.

# What are the tradeoffs of using arrays and hashes for this challenge?
    # One of the tradeoffs of using arrays and hashes for this challenge is that we
    # can collect all of the desired items at once and simply sort them into an array
    # by splitting them instead of having to store each one as a different variable then
    # putting them all together. Another trade-off of using arrays and hashes is that
    # we can simplu call through each item in the array and make it into and key inside 
    # a hash with a given value all in one line of code. This allows for better readability
    # and less clutter within the code.
    
# What does a method return?

# What kinds of things can you pass into methods as arguments?

# How can you pass information between methods?

# What concepts were solidified in this challenge, and what concepts are still confusing?