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

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

