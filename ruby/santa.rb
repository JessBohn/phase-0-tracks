# Jessica Bohn
# 06/11/16

# Create a Santa Class
class Santa
	# Add initiliaze method
		# Prints line stating new Santa instance
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance..."
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "This new Santa is a(n) #{@gender} #{@ethnicity} and #{@age}
				years old!"
	end

	# Define method for speak
	def speak
		# Prints holiday greeting
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
		
	# Define method for eating milk and cookies
	def eat_milk_and_cookies(cookie)
		# Takes in a type of cookie as a parameter
		# Prints the cookie in a sentence
		puts "That was a good #{cookie}! The milk was delicious too!"
	end
	# Add method that ages a santa by one year
	def celebrate_birthday
		@age +=1
	end

end

# Create an empty array for multiple santas
santas = []
# Create list of genders to be given to new santas
santa_genders = ["female", "male", "cisgender", 
	"agender", "bigender", "N/A", "gender fluid"]
# Create matching list of ethnicities to go with above genders
santa_ethnicities = ["Goddess", "Latino", "Centaur", "African-American",
	"German", "American", "Canadian"]
# Combine genders and ethnicities into array of santas
santa_genders.length.times do |i|
	santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

# Make each of the santas say the holiday greeeting
# santas.each do |i|
# 	i.speak
# end
# # Make each santa eat the cookie given
# santas.each do |i|
# 	i.eat_milk_and_cookies("chocolate")
# end




# santa.speak
# santa.eat_milk_and_cookies("chocolate chip cookie")