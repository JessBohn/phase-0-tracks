# Jessica Bohn
# 06/12/16

# Create a class that creates a cute kitty cat!
class Cat
	attr_reader :breed, :age, :gender
	# Set characteristics in initialize 
	def initialize
		puts "Initializing cat instance..."
		# Set characteristic for breed of each cat
			# Create a list of different cat breeds
			cat_breeds = ["Siamese", "calico", "diluted calico", 
				"Maine Coon", "Bengal", "Sphynx", "Russian Blue", 
				"Himalayan", "Munchkin", "Siberian"]
			# Choose random breed from list for each rendering
			@breed = cat_breeds.sample

		# Set characteristic for cat's age
			# Choose random age between 0 and 20 (cat's don't get that old)
			@age = Random.new.rand(20)

		# Set characteristic for gender
			# create list of genders (male & female)
			genders = ["female", "male"]
			# randomly select gender fromt list to assign
			@gender = genders.sample

		# Set characteristic for level of talkative-ness
			# Create list of "levels" - mild, medium, high

			puts "This cat is a #{@breed}, is a #{@gender}, and is #{@age} years old!"
		end

	# Method for meowing
		# Input: level of talkative-ness
		# output: prints string of # of meows based on talkative-ness
			# IF mild , meows once
			# IF medium, meows 3 times
			# IF high, meows 5 times, CAPS

	# Method for catnip attack
		# prints string announcing cat has found catnip and is now
		# bouncing off the walls

	# Method cuddles
		# prints string announcing your baby kitty has jumped on you
		# for cuddle time! & is now kneading you, ouch
end

Cat.new