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