# Jessica Bohn
# 06/06/2016

# Program as a whole must take the name of an agent, 
# Swap first and last name
# change each of its vowels to the next one in the order [aeiou]
# change the consonants to the next in the alphabet

agent_real_name = "Felicia Torres".downcase
agent_real_name = agent_real_name.split(' ')

# Use the .reverse method to swap the order of the items (names) in the array
p last_first = agent_real_name.reverse
 p last_first = last_first.join('')
# p vowels = combine_names.scan(/[aeiou]/)
# vowels = vowels.to_s
# p new_vowels = vowels.next(/[aeiou]/)

# Define method to take the vowels in the name and switcht them to the next in the vowel order [aeiou]
# def next_vowel(x)
# 	vowels = ["a", "e", "i", "o", "u"]
# 	last_first = last_first.split('')
# 	go_to_next_vowel = last_first.map do |letter|
# 		if vowels.include?(letter)
# 			vowels.rotate(1)[vowels.index(letter)]
# 		else
# 			letter
# 		end
# 	end
# 	p go_to_next_vowel.join
# end

# p next_vowel(last_first)