# Jessica Bohn
# 06/05/2016

# I will be writing an application for a pet sitter

# Must implement all important questions 
	# Name
	# Age
	# Address
	# All-time favorite animal
	# How many pets do they have
	# What kind of pets do they have
	# Have they ever watched someone else's pet
	# End - whether they can be my pet sitter or not
# Written as if applicant is directly filling it out

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