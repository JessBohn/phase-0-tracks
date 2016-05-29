# Jessica Bohn
# 05/29/2016
# 4.4 Solo Challenge

puts "What is your name?"
employee_name = gets.chomp

puts "How old are you?"
given_age = gets.chomp
given_age = given_age.to_i
print "What year were you born?"
birth_year = gets.chomp
birth_year = birth_year.to_i
employee_age = 2016 - birth_year

puts "Our company cafeteria serves garlic bread.
		Should we order some for you?"
likes_garlic = gets.chomp
if likes_garlic == "yes"
	likes_garlic = true
else
	likes_garlic = false
end

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp
if health_insurance == "yes"
	health_insurance = true
else
	health_insurance = false
end

when given_age == employee_age && (likes_garlic || health_insurance)
	puts "Probably not a vampire."
end