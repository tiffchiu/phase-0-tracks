class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# Driver Code

# Initializes instance of puppy
cody = Puppy.new

# Return class
# p cody.class

cody.fetch("ball") 
cody.fetch(3)