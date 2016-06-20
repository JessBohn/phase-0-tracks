# Jessica Bohn
# 06/12/16

module Shout
	def yell_angrily(words)
		puts words.upcase + "!!!" + ">:("
	end

	def yell_happily(words)
		puts words + "!!" + ":D"
	end

end

class Child
	include Shout
end

class Adult
	include Shout
end

 
Child.new.yell_angrily("I'm hungry")
Adult.new.yell_angrily("go to your room")

Child.new.yell_happily("It's so fluffy, I'm gonna die")
Adult.new.yell_happily("Omg, it's so good to see you")


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