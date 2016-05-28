puts "What is the hamster's name?"
hamster_name = gets.chomp


puts "How loud is this hamster on a scale from 1 to 10?"
volume = gets.chomp
volume = volume.to_i

puts "What is the color of this hamster's fur?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
candidate_input = gets.chomp
if candidate_input == "y"
	adoption_candidate = true
	puts "This hamster is a good candidate for adoption, yay!"
else
	adoption_candidate = false
	puts "This hamster will not be put up for adoption :("
end	


puts "What is the estimated age of this hamster?"
age = gets.chomp
age = age.to_i # Converts the age of the hamster from a 
				# string to an integer
# The if statement below is to set the value of age to nil
# if the user did not provide an age  
	if age == ""
		age = nil
	else
		p age
	end

