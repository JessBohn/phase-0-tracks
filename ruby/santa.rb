# Jessica Bohn
# 06/11/16

# Create a Santa Class
class Santa
	# Method to simply return age of the santa
	# Method to return ethniciity of santa
	attr_reader :age, :ethnicity
	# setter method that can reassign gender outside of class
	attr_accessor :gender

	# Add initiliaze method
		# Prints line stating new Santa instance
	def initialize
		# Establish sample array of genders to pick from
		santa_genders = ["female", "male", "cisgender", "agender", 
			"bigender", "N/A", "gender fluid", "transgender"]
		# Establish sample array of ethnicities to pick from
		santa_ethnicities = ["Goddess", "Latino", "Centaur", "African-American",
			"German", "American", "Canadian", "Unicorn", "cat lady", "white"]
		# Select random gender from sample genders for new instance
		@gender = santa_genders.sample
		# Select random ethnicity from sample ethnicities for new instance
		@ethnicity = santa_ethnicities.sample
		puts "Initializing Santa instance..."
		# Establishes a random age for each instance
		@age = Random.new.rand(140)
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

	# Add method that takes a specific reindeer as an argument
	# and moves said reindeer to end of array
	def get_mad_at(reindeer)
		@reindeer_ranking.each do |name|
  		if reindeer == name
  			@reindeer_ranking.delete(name)
  			@reindeer_ranking.push(name)
  		else
  			next
  		end
  		end
	end

end

# Create multiple instances of Santas
	# Set number of santas to 0 at beginning
num_of_santas = 0
# Use loop to create a desired number of santas
until num_of_santas == 150
	# create new instance for each iteration
	Santa.new
	# increase number of santas by one for each iteration
	num_of_santas += 1
end




# DRIVER CODE USED BEFORE RELEASE 4


# # Create an empty array for multiple santas
# santas = []
# # Create list of genders to be given to new santas
# santa_genders = ["female", "male", "cisgender", 
# 	"agender", "bigender", "N/A", "gender fluid"]
# # Create matching list of ethnicities to go with above genders
# santa_ethnicities = ["Goddess", "Latino", "Centaur", "African-American",
# 	"German", "American", "Canadian"]
# # Combine genders and ethnicities into array of santas
# santa_genders.length.times do |i|
# 	santas << Santa.new(santa_genders[i], santa_ethnicities[i])
# end


# Reassign a gender
# santas[5].gender = "male"
# p santas[5]
# # Rearrange a certain santa's reindeer ranking
# santas[4].get_mad_at("Rudolph")
# p santas[4]


# santas.each do |i|
# 	i.celebrate_birthday
# 	santa_num = santas.index(i) + 1
# 	puts "Santa number #{santa_num} is now #{i.age} years old!"
# end

# puts "Santa # 2's ethnicity is #{santas[1].ethnicity}"

# Make each santa eat the cookie given
# santas.each do |i|
# 	i.eat_milk_and_cookies("chocolate")
# end