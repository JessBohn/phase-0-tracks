# Jessica Bohn
# 06/12/16

# Create a class that creates a cute kitty cat!
class Cat
	attr_reader :breed, :age, :gender, :meowiness
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
			meowiness = ["mild", "medium", "high"]
			# Randomly select level from list
			@meowiness = meowiness.sample

			puts "This cat is a #{@breed}, is a #{@gender}, and is #{@age} years old!"
			puts "This cat is also a #{@meowiness} meow-er!"
		end
		meowiness = @meowiness
	# Method for meowing
		# Input: level of talkative-ness
		def meow
		# output: prints string of # of meows based on talkative-ness
			# IF mild , meows once
			if @meowiness == "mild"
				puts "meowww"
			# IF medium, meows 3 times
			elsif @meowiness == "medium"
				3.times { print "meowww  "}
			# IF high, meows 5 times, CAPS
			else
				5.times { print "meowww  ".upcase }
			end

		end

	# Method for catnip attack
		# prints string announcing cat has found catnip and is now
		# bouncing off the walls

	# Method cuddles
		# prints string announcing your baby kitty has jumped on you
		# for cuddle time! & is now kneading you, ouch
end

lambda = Cat.new
lambda.meow
