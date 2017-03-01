class Santa

	def initialize(name, ethnicity)
		puts "Initializing Santa instance ..."
		@name = name
		@ethnicity = ethnicity
	end

	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	@age = 0

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

end


# Driver Code
nick = Santa.new
nick.speak
nick.eat_milk_and_cookies("chocolate chip")