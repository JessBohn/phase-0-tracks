# Jessica Bohn
# 05/29/2016
# 4.4 Solo Challenge

# I am completely unsure of how to tell this program to check for suspicious names and then print the output of "Definitely a vampire"
# Do I run their name through some sort of weird sequence to check it out or do I ask the user if it just seems suspicious
# to them personally. 


print "How many new employees will be entered? "
new_employees = gets.chomp
new_employees = new_employees.to_i # Converts # of employees to an integer so that it can be processed in the loop

until new_employees == 0 # Will run the below loop until the number of employees
							# to be entered equals zero

	print "What is your name? "
	employee_name = gets.chomp

	print "How old are you? "
	given_age = gets.chomp
	given_age = given_age.to_i # Converts age from string to integer

	print "What year were you born? "
	birth_year = gets.chomp
	birth_year = birth_year.to_i # Converts year from string to integer
	employee_age = 2016 - birth_year # Calculates the actual age based off birth year given
	employee_age = (employee_age-1..employee_age) # Creates a one year buffer range for the calculated age to compensate for the time of year

	print "Our company cafeteria serves garlic bread. Should we order some for you? "
	likes_garlic = gets.chomp
	likes_garlic = likes_garlic.downcase # Converts answers to lowercase so that it will equal in the if statement below
	if likes_garlic == "yes"
		likes_garlic = true
	else
		likes_garlic = false
	end


	print "Would you like to enroll in the company's health insurance? "
	health_insurance = gets.chomp
	health_insurance = health_insurance.downcase # Converts answers to lowercase so that it will equal in the if statement below
	if health_insurance == "yes"
		health_insurance = true
	else
		health_insurance = false
	end

	# The if statement below is to decide the probability of whether or not the new employee is a vampire based off of the information provided
	# The results should be based on the latest condition matched NOT the first condition
	# Even if all other items seem to checkout, program should print "Definitely a vampire" if they have a suspicious vampire-esque name

	if employee_age === given_age && (likes_garlic || health_insurance) # if ages are equally true AND the employee either likes garlic or accepted the insurance
		puts "Probably not a vampire."										# they are probably NOT a vampire
	elsif employee_age != given_age && ( !likes_garlic || !health_insurance) # if the ages ARE NOT equal AND the employee doesn't like garlic or declined insurance
		puts "Probably a vampire."													# they probably ARE a vampire
	elsif employee_age != given_age && ( !likes_garlic && !health_insurance) # if the ages ARE NOT equal AND the employee doesn't like garlic AND declined insurance
		puts "Most certainly a vampire." #Could not figure out how to get the program to use the latest condition
											# matched instead of the first, therefore my program will currently never output this result since the above elsif
	# elsif condition										# will have already been met
	# 	puts "Definitely a vampire"		# This is where I am guessing my suspcious name condtion would go
											# However, if we were asking the use their opinion we would have to input a question				
	else 
		puts "Results inconclusive"
	end


	new_employees = new_employees - 1 # Lowered the number of employees to be entered by one
										# to continue the loop for all necessary entries
end

	puts "Please list all of your current allergies"
	allergy_input = gets.chomp

	until allergy_input == "sunshine" 	# I am honestly currentl hopelessly lost on how to collect all of the data until done is entered THEN continue that until sunshine
											# is entered. I got the sunshine loop work without the entering done part, but that's all I could get to work
		allergy_input = gets.chomp
	end
	puts "Probably a vampire"


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."