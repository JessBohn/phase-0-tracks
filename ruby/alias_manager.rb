# Jessica Bohn
# 06/06/2016

# Program as a whole must take the name of an agent, 
# Swap first and last name
# change each of its vowels to the next one in the order [aeiou]
# change the consonants to the next in the alphabet
agent_real_name = ''

until agent_real_name == "quit"
	puts "Hello, what is your name?"
	agent_real_name = gets.chomp
	agent_real_name = agent_real_name.downcase
	agent_real_name = agent_real_name.split(' ')

	# Use the .reverse method to swap the order of the items (names) in the array
	p last_first = agent_real_name.reverse
	p last_first = last_first.join(' ')


	def new_agent_name(str)
		alphabet = ("a".."z").to_a
		vowels = ["a", "e", "i", "o", "u"]
		consonants = alphabet - vowels
		str = str.split('')
	  	name_adv_letters = str.map do |letter|
		    if vowels.include?(letter)
	      		vowels.rotate(1)[vowels.index(letter)]
		    elsif consonants.include?(letter)
		      consonants.rotate(1)[consonants.index(letter)]
		  	else
		  		letter
		    end
	  end
	  name_adv_letters.join
	end

	proper_new_agent_name = new_agent_name(last_first).capitalize!  # Yes this only capitalizes the first name...
	puts "Your new fake agent name is #{proper_new_agent_name}!"
	agent_real_name = gets.chomp
end




# Define method to take the vowels in the name and switch them to the next in the vowel order [aeiou]
	# Establish array containing the vowels
	# Compares letters from the given name to the array of vowels
	# If a vowel
		# Switch the vowels to the next one in the order
	# Else
		# Keep original letters
	# Rejoin the letters to form a name
# def next_vowel(str)
#   vowels = ["a", "e", "i", "o", "u"]
#   str = str.split('')
#   name_adv_vowels = str.map do |letter|
#     if vowels.include?(letter)
#       vowels.rotate(1)[vowels.index(letter)]
#     else
#       letter
#     end
#   end
#   name_adv_vowels.join
# end

# Define method to take the consonants in the name and switch them to the next in the order
	# Establish array containing the vowels
		# Cons = whole alphabet - vowels
	# Compares letters from the given name to the array of cons
	# If a con
		# Switch the cons to the next one in the order
	# Else
		# Keep original letters
	# Rejoin the letters to form a name
# def next_consonant(str)
# 	alphabet = ("a".."z").to_a
# 	vowels = ["a", "e", "i", "o", "u"]
# 	consonants = alphabet - vowels
# 	str = str.split('')
#   	name_adv_cons = str.map do |letter|
# 	    if consonants.include?(letter)
# 	      consonants.rotate(1)[consonants.index(letter)]
# 	    else
# 	      letter
# 	    end
#   end
#   name_adv_cons.join
# end

# p next_consonant(next_vowel(last_first))

# new_agent_name = next_consonant(next_vowel(last_first))
# p proper_new_agent_name = new_agent_name.capitalize!

