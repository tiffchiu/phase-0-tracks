class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof! " * int
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	p human_years * 7
  end

  def dance
  	puts "*stands on hind legs*"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

class Koala

	def initialize
		puts "Initializing new koala instance ..."
	end

	def sleep(hours)
		puts "*sleeping #{hours} hours a day*"
	end

	def eats(food)
		puts "*eating #{food}*"
	end

end


# Driver Code

# Initializes instance of puppy
cody = Puppy.new

# Return class
# p cody.class

cody.fetch("ball") 
cody.speak(5)
cody.roll_over
cody.dog_years(3)
cody.dance


fred = Koala.new

fred.sleep(15)
fred.eats("eucalyptus")

# 50.times { |block_count| puts "This block has already run #{block_count} times." }

koala = [ ]

i = 0
while i < 50 do 
	koala << Koala.new
	i += 1 
end

# p koala

koala.each do |koala_activity|
	koala_activity.sleep(15)
	koala_activity.eats("eucalyptus")
end







