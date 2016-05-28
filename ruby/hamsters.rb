puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is this hamster on a scale from 1 to 10?"
volume = gets.chomp
volume = volume.to_i

puts "What is the color of this hamster's fur?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
adoption_candidate = gets.chomp

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

