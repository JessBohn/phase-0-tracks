# Jessica Bohn
# 06/12/16

module Shout
	def loud_yell(words)
		puts words.upcase + "!!!"
	end
end

class Child
	include Shout
end

class Adult
	include Shout
end

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + " :D "
#   end
# end

# p Shout.yell_happily("I love my cats")
# p Shout.yell_angrily("My feet hurt")