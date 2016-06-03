# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase # Converts each case to the other upper to lower & lower to upper
# => “InVeStIgAtIoN”

p "zom".insert(1, 'o') # .insert(index, other_str) - Inserts the other_str before the character at the given index
p "zom".insert(2, 'o')
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase # Makes all characters uppercase
p "Stop! You’re under arrest!".upcase! # Same as above, but would return nil if nothing changed
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".ljust(18, ' suspects') # Since the integer, 18, is greater than the length of the string, a new str of length integer, 18, 
										# is returned with original str left justified and padded with padstr ( suspects)
#=> "the usual suspects"

p " suspects".insert(-10, 'the usual') # When using the negative index it inserts other_str after given index
p " suspects".insert(0, 'the usual')
p " suspects".rjust(18, 'the usual') # Functions just as ljust, but right justifies str and adds padstr before original str
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice!(1..39) # Removes characters corresponding to indexes 1 -> 38 and returns the removed portion

# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ") # Removes any repeating instances of " " (the space) to "squeeze" it
# => "Elementary, my dear Watson!"

p "z".each_byte {|c| print c, ' ' }
# Passes each byte in str to the given block *Not sure how to make this one not print the "z" ( or on the next method either)
p "z".each_codepoint {|c| print c, ' '}
# Passes the integer ordinal, or codepoint, of each character in str i.e. number place within the stored list of characters in Unicode
p "z".gsub(/./) {|s| s.ord.to_s}
# The match string |s| is passed in as a parameter and variables are set appropriately.
# the value returned by the block s.ord.to_s will be substituted for the match on each call
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?"
# => 4