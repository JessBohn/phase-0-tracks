# Jessica Bohn
# 05/29/2016
# 4.4 Solo Challenge

print "What is your name? "
employee_name = gets.chomp

print "How old are you? "
given_age = gets.chomp
given_age = given_age.to_i

print "What year were you born? "
birth_year = gets.chomp
birth_year = birth_year.to_i
employee_age = 2016 - birth_year
employee_age = (employee_age-1..employee_age)

print "Our company cafeteria serves garlic bread. Should we order some for you? "
likes_garlic = gets.chomp
likes_garlic = likes_garlic.downcase
if likes_garlic == "yes"
	likes_garlic = true
else
	likes_garlic = false
end


print "Would you like to enroll in the company's health insurance? "
health_insurance = gets.chomp
health_insurance = health_insurance.downcase 
if health_insurance == "yes"
	health_insurance = true
else
	health_insurance = false
end

if employee_age === given_age && (likes_garlic || health_insurance)
	puts "Probably not a vampire."
elsif !(employee_age === given_age) && ( !likes_garlic || !health_insurance)
	puts "Probably a vampire."
else 
	puts "Results inconclusive"
end