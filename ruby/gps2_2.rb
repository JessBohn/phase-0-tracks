=begin
Method to create a list
    -define #create_list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
  -Create a keys based on the string input
  -Value of keys would be the quantity needed of each key.
  set default quantity
  print the list to the console [can you use one of your other methods here?]
  -call #print_method 
output: [what data type goes here, array or hash?]
    -hash

Method to add an item to a list
input: item name and optional quantity
steps:
    -turn item name input to a symbol at the end of the earlier hash
    -quantity will be value of item name input.
output:
    -p udated grocery list using #print.

Method to remove an item from the list
input:
    -Would be Key you are trying to delete
steps:
    -Delete key - value pair
output:
    -hash with the delete key-value pair gone.
    -p udated grocery list using #print.

Method to update the quantity of an item
input:
    -key
    -new value
steps:
    -first we need to find the key
    -then change the value of the key to the new quantity
output:
    -Upadated hash with new quantity in item input.

Method to print a list and make it look pretty
input:
    -Hash
steps:
    -Make sure list is readable
    -list each item with quantity in the same line
    -Make sure to add whitespace between each item key
output:
    -A prettyfied hash
=end

# Method to create a list
#     -define #create_list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#   - Seperate items by spaces
#   - Create a keys based on the string input
#   - Value of keys would be the quantity needed of each key.
#   - set default quantity
#   print the list to the console [can you use one of your other methods here?]
#   -call #print_method 
# output: [what data type goes here, array or hash?]
#     -hash

def create_list(str)
    grocery_list = {}
    grocery_items = str.split(" ")
    grocery_items.each {|grocery_items| grocery_list[:grocery_items] = 1}
end
create_list("apples oranges")