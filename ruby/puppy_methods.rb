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