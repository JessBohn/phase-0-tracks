# Jessica Bohn
# 05/29/2016
# 4.4 Solo Challenge

print "What is your name?"
employee_name = gets.chomp

print "How old are you?"
given_age = gets.chomp
given_age = given_age.to_i
p given_age
print "What year were you born? "
birth_year = gets.chomp
birth_year = birth_year.to_i
employee_age = 2016 - birth_year
employee_age = (employee_age-1..employee_age)
p employee_age

print "Our company cafeteria serves garlic bread. Should we order some for you?"
likes_garlic = gets.chomp
if likes_garlic == "yes"
	likes_garlic = true
else
	likes_garlic = false
end

print "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp
if health_insurance == "yes"
	health_insurance = true
else
	health_insurance = false
end

p employee_age === given_age