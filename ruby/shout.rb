# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
#   	end

#   	def self.yell_happily(words)
# 		words + "!" + " :D"  	
#   	end
# end

# p Shout.yell_angrily("What a day")
# p Shout.yell_happily("What a day")

# MIXIN
module Shout
	def yell_angrily(words)
    	p words + "!!!" + " :("
  	end

  	def yell_happily(words)
		p words + "!" + " :D"  	
  	end
end

class Coach
	include Shout
end

class Cheerleader
	include Shout
end

# DRIVER CODE
coach = Coach.new
coach.yell_angrily("That was not a foul")

becky = Cheerleader.new
becky.yell_happily("Let's go team")