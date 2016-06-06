# Jessica Bohn
# 06/05/2016

# I will be writing an application for a pet sitter

# Written as if applicant is directly filling it out
# Must implement all important questions 
	# Name
	# Age
	# All-time favorite animal
	# Do they have any pets
		# If yes
			# How many pets do they have
		# Else 
			# end - continue on
	# Are they allergic to any animals? (If yes, please list which animal you are allergic to)
	# Have they ever watched someone else's pet
	# End - 
		# Use conditional statements to determine
		# whether they can be my pet sitter or not


pet_sitting_applicant = {}
p pet_sitting_applicant


puts "What is your name?"
name = gets.chomp
pet_sitting_applicant[:name] = name
p pet_sitting_applicant

puts "How old are you?"
age = gets.chomp
age = age.to_i
pet_sitting_applicant[:age] = age
p pet_sitting_applicant

puts "What is your all-time favorite animal?"
fave_animal = gets.chomp
pet_sitting_applicant[:fave_animal] = fave_animal
p pet_sitting_applicant

puts "Do you have any pets?"
has_pets = gets.chomp
	if has_pets == "yes"
		pet_sitting_applicant[:has_pets] = true
		puts "How many pets do you have?"
		num_of_pets = gets.chomp
		num_of_pets = num_of_pets.to_i
		pet_sitting_applicant[:num_of_pets] = num_of_pets
	else
		pet_sitting_applicant[:has_pets] = false
	end
p pet_sitting_applicant

puts "Are you allergic to any kind of animal. If yes, please list the animal?"
allergic_to_animal = gets.chomp
	if allergic_to_animal == "no"
		pet_sitting_applicant[:allergic_to_animal] = false
	else
		pet_sitting_applicant[:allergic_to_animal] = true
	end
p pet_sitting_applicant

puts "Have you ever been a pet sitter for someone else before?"
previous_petsitter = gets.chomp
	if previous_petsitter == "yes"
		pet_sitting_applicant[:previous_petsitter] = true
	else
		pet_sitting_applicant[:previous_petsitter] = false
	end
p pet_sitting_applicant

