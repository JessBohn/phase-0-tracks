puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "This hamster's name is #{hamster_name}" # Prints the hamster's name to the console

puts "How loud is this hamster on a scale from 1 to 10?"
volume = gets.chomp
volume = volume.to_i
# This if statement will tell the user whether the hamster is
# loud or quiet based on the stored data
	if volume < 5
		puts "This is a pretty quiet hamster!"
	elsif volume == 5
		puts "This hamster's volume is pretty neutral"
	else
		puts "This hamster is kind of loud!"
	end

puts "What is the color of this hamster's fur?"
fur_color = gets.chomp
puts "#{hamster_name}'s fur color is #{fur_color}"

puts "Is this hamster a good candidate for adoption? (y/n)"
candidate_input = gets.chomp
# The if statement below will treat the above input value as
# a boolean operator and output appropriate responses
	if candidate_input == "y"
		adoption_candidate = true
		puts "#{hamster_name} is a good candidate for adoption, yay!"
	else
		adoption_candidate = false
		puts "#{hamster_name} will not be put up for adoption :("
	end	


puts "What is the estimated age of this hamster?"
age = gets.chomp

# The if statement below is to set the value of age to nil
# if the user did not provide an age  
	if age == ""
		age = nil
		puts "#{hamster_name}'s age is unknown!"
	else
		age = age.to_i # Converts the age of the hamster from a 
				# string to an integer
		puts "#{hamster_name}'s age is roughly #{age}"
	end

