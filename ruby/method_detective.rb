# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

# "Stop! You’re under arrest!".uppercase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
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



# "How many times does the letter 'a' appear in this string?".
# => 4