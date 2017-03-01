class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = (1..140).to_a.sample

	end

	# def about
	# 	puts @gender
	# 	puts @ethnicity
	# 	puts @reindeer_ranking
	# end

	# getter methods 
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
    	@reindeer_ranking.delete(reindeer_name)
    	@reindeer_ranking.push(reindeer_name)
  	end

end


# DRIVER CODE

# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("chocolate chip")

# SAMPLE INITIALIZATION CODE
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

# santa = Santa.new("agender", "Australia")
# # santa.about
# santa.gender = "female"
# # santa.about
# santa.celebrate_birthday
# santa.get_mad_at("Vixen")
# santa.about
# p santa.age
# puts "This santa is #{santa.age} years old and from #{santa.ethnicity}."

# santa = Santa.new("female", "Icelandic")
# santa = Santa.new("gender fluid", "Mexico")
# santa = Santa.new("male", "Hungary")
# santa = Santa.new("bigender", "China")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "Gender: #{santa.gender}"
  	puts "Ethnicity: #{santa.ethnicity}"
  	puts "Age: #{santa.age}"
end
