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


pet_sitting_applicant = {} # Application is set to an empty hash

puts "What is your name?"
name = gets.chomp
pet_sitting_applicant[:name] = name

# Ask applicant how old they are
# Age will be used conditionally at the end
puts "How old are you?" 
age = gets.chomp # Collect applicant's age 
age = age.to_i # Convert string to an integer
pet_sitting_applicant[:age] = age # Initiate :age key in hash with value of age given


puts "What is your all-time favorite animal?"
fave_animal = gets.chomp
pet_sitting_applicant[:fave_animal] = fave_animal # Collects applicant's favorite animal and stores it in the hash - For fun, not for determining hiring status

#Ask user if they owns any pets - to be used conditionally at the end
	# If yes
		# Ask how many they have, to be polite
			# Convert string collected to an integer
		# Set :has_pets => true
	# Else
		# Set :has_pets => false
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

# Ask user if they are allergic to any animals, if so what kind - to be used conditionally at the end
	# If user says no 
		# :allergic_to_animal => false
	# Else
		# :allergic_to_animal => true
		# variable allergic_to_animal will store the type of animal, to be used later
puts "Are you allergic to any kind of animal. If yes, please list the animal?"
allergic_to_animal = gets.chomp
	if allergic_to_animal == "no"
		pet_sitting_applicant[:allergic_to_animal] = false
	else
		pet_sitting_applicant[:allergic_to_animal] = true
	end

# Ask user if they have ever been a pet sitter before - to be used conditionally at the end
	# If yes
		# :previous_petsitter => true
	# Else
		# :previous_petsitter => false
puts "Have you ever been a pet sitter for someone else before?"
previous_petsitter = gets.chomp
	if previous_petsitter == "yes"
		pet_sitting_applicant[:previous_petsitter] = true
	else
		pet_sitting_applicant[:previous_petsitter] = false
	end

# Determine whether or not you (I) would hire this applicant
	# If too young (< 18)
		# :hired => false
		# puts that they're too young for me to hire
	# elsif they are allergic to cats or dogs they cannot be hired
		# :hired => false
		# puts cannot hire, I own cats and dogs
	# elsif they don't have pets and they have never watched someone's pet, cannot be hired
		# :hired => false
		# puts wants someone with more animal experience
	# If none of the above conditions have disqualified them, they are hired
		# :hired => true
		# puts congratulations & asks for their phone number
		# :applicant_phone_num => number entered that has been converted to an integer

if age < 18
	puts "I'm sorry, but I cannot take you as my pet sitter. I would like someone who is at least 18."
	pet_sitting_applicant[:hired] = false
elsif allergic_to_animal == "cats" || allergic_to_animal == "dogs"
	puts "I'm sorry, but I cannot take you as my pet sitter. I own both cats and dogs"
	pet_sitting_applicant[:hired] = false
elsif !pet_sitting_applicant[:has_pets] && !pet_sitting_applicant[:previous_petsitter]
	puts "I'm sorry, but I cannot take you as my pet sitter. I prefer someone with more experience dealing with animals."
	pet_sitting_applicant[:hired] = false
else
	puts "Congratulations, I would love to hire you as my new pet sitter! What is your phone number? (Digits only, please)"
	applicant_phone_num = gets.chomp
	applicant_phone_num = applicant_phone_num.to_i
	pet_sitting_applicant[:hired] = true
	pet_sitting_applicant[:applicant_phone_num] = applicant_phone_num
end

p pet_sitting_applicant

puts "Thank you for taking the time to fill out this application!"