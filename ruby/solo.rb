# Jessica Bohn
# 06/12/16

#BUSINESS LOGIC

# Create a class that creates a cute kitty cat!
class Cat
	attr_reader :breed, :meowiness, :name, :gender
	attr_accessor :age
	# Set characteristics in initialize 
	def initialize
		puts "Initializing cat instance..."
		# Set characteristic for the cat's name
			# Ask user for cat's name
			puts "What is this cat's name?"
			@name = gets.chomp
		# Set characteristic for breed of each cat
			# Ask user for the breed of their cat
			puts "What breed is #{@name}?"
			@breed = gets.chomp

		# Set characteristic for gender
			# Ask user for cat's gender
			puts "Is #{@name} a male or female?"
			@gender = gets.chomp
			
		# Set characteristic for cat's age
			# Ask user for the age of the cat
			puts "How old is #{@name}?"
			age = gets.chomp
			@age = age.to_i

		# Set characteristic for level of talkative-ness
			# Ask user for cat's level of talkative-ness
			puts "Please rank #{@name}'s level of 'talkative-ness' from 1 to 10"
			# Collect data & convert to a number
			meowiness = gets.chomp
			@meowiness = meowiness.to_i
			
	end

	# Method for meowing
		# Input: level of talkative-ness
		def meow
		# output: prints string of # of meows based on talkative-ness
			# IF mild (1 to 3) , meows once
			puts "meowww" if (1..3).include?(@meowiness)
			# IF medium (4 to 6), meows 3 times
			3.times { print "meowww  "} if (4..6).include?(@meowiness)
			# IF high (7 to 8), meows 5 times,
			5.times { print "meowwww  " } if (7..8).include?(@meowiness)
			# IF  really high (9 to 10), meows 5 times, CAPS
			5.times { print "meowwww  ".upcase } if (9..10).include?(@meowiness)
		end
		

	# Method for catnip attack
		def catnip_attack
		# prints string announcing cat has found catnip and is now
		# bouncing off the walls
			puts "Uh oh the cat has found the catnip and is going crazy!"
		end


	# Method cuddles
		def kitty_cuddles(cuddle)
		# prints string announcing your baby kitty has jumped on you
		# for cuddle time! & is now kneading you, ouch
			if cuddle == "yes"
				puts "Aww, #{@name} has climbed on your lap and is cuddling with you."
				puts "Oh, #{@name} kneading you. Ouch."
			else
				puts "Boo! :( "
			end
		end
end

# USER INTERFACE		

cats = []

# User needs to be able to create as many instances as they want
	# Keep creating instances until the user types 'done'
loop do 
	# Add each cat created to an array
	cats << Cat.new
	puts " - click to continue or type done"
	original_input = gets.chomp
	break if original_input == "done"
end

# Print out all attributes of each cat created
cats.each do |cat_num|
	print "#{cat_num.name} is a #{cat_num.age} year old #{cat_num.gender} #{cat_num.breed} "
	puts "with a talkative ranking of #{cat_num.meowiness}"
	puts "Does #{cat_num.name} like to cuddle?"
	cuddle = gets.chomp
	cat_num.kitty_cuddles(cuddle)
end





# Original class code W/O USER INTERFACE

# class Cat
# 	attr_reader :breed, :age, :meowiness
# 	attr_accessor :gender
# 	# Set characteristics in initialize 
# 	def initialize
# 		puts "Initializing cat instance..."
# 		# Set characteristic for breed of each cat
# 			# Create a list of different cat breeds
# 			cat_breeds = ["Siamese", "calico", "diluted calico", 
# 				"Maine Coon", "Bengal", "Sphynx", "Russian Blue", 
# 				"Himalayan", "Munchkin", "Siberian"]
# 			# Choose random breed from list for each rendering
# 			@breed = cat_breeds.sample

# 		# Set characteristic for cat's age
# 			# Choose random age between 0 and 20 (cat's don't get that old)
# 			@age = Random.new.rand(20)

# 		# Set characteristic for gender
# 			# create list of genders (male & female)
# 			genders = ["female", "male"]
# 			# randomly select gender fromt list to assign
# 			@gender = genders.sample

# 		# Set characteristic for level of talkative-ness
# 			# Create list of "levels" - mild, medium, high
# 			meowiness = ["low", "medium", "high"]
# 			# Randomly select level from list
# 			@meowiness = meowiness.sample

# 			puts "This cat is a #{@breed}, is a #{@gender}, and is #{@age} years old!"
# 			puts "This cat is also a #{@meowiness} meow-er!"
# 		end
# 		meowiness = @meowiness
# 	# Method for meowing
# 		# Input: level of talkative-ness
# 		def meow
# 		# output: prints string of # of meows based on talkative-ness
# 			# IF mild , meows once
# 			if @meowiness == "low"
# 				puts "meowww"
# 			# IF medium, meows 3 times
# 			elsif @meowiness == "medium"
# 				3.times { print "meowww  "}
# 			# IF high, meows 5 times, CAPS
# 			else
# 				5.times { print "meowww  ".upcase }
# 			end

# 		end

# 	# Method for catnip attack
# 		def catnip_attack
# 		# prints string announcing cat has found catnip and is now
# 		# bouncing off the walls
# 			puts "Uh oh the cat has found some catnip and is going crazy!"
# 		end

# 	# Method cuddles
# 		def cuddles
# 		# prints string announcing your baby kitty has jumped on you
# 		# for cuddle time! & is now kneading you, ouch
# 			puts "Aww, the cat has climbed on your lap and is cuddling with you."
# 			puts "Oh, they're kneading you. Ouch."
# 		end
# end