# Jessica Bohn
# 06/06/2016

# Program as a whole must take the name of an agent, 
# Swap first and last name
# change each of its vowels to the next one in the order [aeiou]
# change the consonants to the next in the alphabet
input = ''
matching_identities = {
# 	'real name' => [],
# 	'fake name' => []
}

until input == "quit"
	# Collect the agent's name
	puts "Hello, what is your name?"
	real_agent_name = gets.chomp
	real_name = real_agent_name.downcase
	real_name = real_name.split(' ')

	# Use the .reverse method to swap the order of the items (names) in the array
	last_first = real_name.reverse
	last_first = last_first.join(' ')


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

	fake_name = new_agent_name(last_first).capitalize!  # Yes this only capitalizes the first name...
	# puts "Your new fake agent name is #{fake_name}!"
	matching_identities.store(real_agent_name, fake_name)
	input = gets.chomp
end
matching_identities.each {|real_name, fake_name| puts "#{fake_name} is actually #{real_name}"}

