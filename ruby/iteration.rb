#Kimberly Patton & Jessica Bohn
def block_method
    name1 = "Jessica"
    name2 = "Kimberly"
    puts "Hi, there."
    yield(name1, name2) 
end     
p block_method {|name1, name2| puts "Hi there #{name1} and #{name2}!"}
list_of_animals = ["hamster", "rabbit", "cat", "horse", "unicorn"]
pet_names = {
    "Bear" => "hamster",
    "Lambda" => "rabbit",
    "Catsby" => "cat",
    "Zeus" => "horse",
    "Athena" => "unicorn"
}
p list_of_animals.each {|animal| puts animal}
p pet_names.each {|name, animal| puts "I have a pet #{animal} and its name is #{name}."}
list_of_animals.map! do |animal|
    puts animal
    animal.upcase
end
puts "After .map say:"
p list_of_animals 

numbers = [34, 57, 72, 92, 15, 46, 24, 58, 12, 6, 66]
numbers_hash = {
    34 => "thirty-four",
    57 => "fifty-seven",
    72 => "seventy-two",
    92 => "ninety-two",
    15 => "fifteen",
    46 => "fourty-six",
    24 => "twenty-four",
    58 => "fifty-eight",
    12 => "twelve",
    6 => "six",
    66 => "sixty-six"
}

p numbers.delete_if {|number| number > 80}
p numbers_hash.delete_if {|integer, word| word == "seventy-two"}

p numbers.keep_if {|number| number.even?}
p numbers_hash.keep_if {|integer, word| integer < 70}

p numbers.select {|number| number < 60}
p numbers_hash.select {|integer, word| integer < 60}

p numbers.take_while {|number| number > 10}
p numbers_hash.take_while {|integer, number| integer > 10}