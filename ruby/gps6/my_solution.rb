# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Looks in the same directory that the original file (or another directory is specified) is in and uses file listed. If only using 'require', full path of the file has to be used.

require_relative 'state_data'

class VirusPredictor

  # Takes input and turns them into instance variables within the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Compiles results of two methods into one method 
  # Why is this not DRY (Don't Repeat Yourself)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # all methods that follow will be made private: not accessible for outside objects

  # Calculates number of deaths based on population density tier (.floor rounds down, including negative numbers)
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determines the speed and prints result as a string
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, value| # state is string, value is returning a hash
  state_virus_predictor = VirusPredictor.new(state, value[:population_density], value[:population])
  state_virus_predictor.virus_effects 
  end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The hashes contain the information using different syntaxes, one being the =>, and the other using a :

# What does require_relative do? How is it different from require?
# Both tell the document that a file needs to be accessed from outside this document, but require_relative lets if know that the file is in a relative folder.

# What are some ways to iterate through a hash?
# Using an .each statement

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They were being used often throughout the method, and being called on multiple times.

# What concept did you most solidify in this challenge?
# Hashes are becoming a little clearer as well as ways to iterate through them.