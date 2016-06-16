# Virus Predictor

# I worked on this challenge [with: Neill Perry].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
# This command allows the current file to reference the information
  # inside the file name given. 
# require_relative is to simplify the general require for a file within
# the same directory as the file you are working on. To use only require
# you must use the absolute file path

require_relative 'state_data'

class VirusPredictor

  # Sets instance variables for state, population, and population density
  # to the parameters passed into initialize
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Purpose is to print the output of the predicted_deaths &
  # speed_of_spread methods defined below by calling the methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private
  # This method is responsible for calculationg the predicted
  # amount of deaths for the state given based on that state's
  # population and population density using the different 
  # parameters defined in the if/else statement
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = (@population * (@population_density / 500)).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method is responsible for calculation the speed at which
  # the disease will spread for the state given based on its defined
  # population density using the equations defined in the if/else 
  # statement
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 150 / @population_density 

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

# Iterate over the key / values in a hash (state_data)
 
# each_pair {| key, value | block } → hsh
STATE_DATA.each do |key, hash|
  new_classobj = VirusPredictor.new(key, hash[:population_density], hash[:population])
  new_classobj.virus_effects
end




=begin 
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end 

#=======================================================================
# Reflection Section

# - What are the differences between the two hash syntaxes shown
#   in the state_data file?

#   The differences is that the first set of keys and values are
#   set using the => syntax whereas the nested hash with the state
#   information in it uses the symbol syntax with the colon after 
#   the symbol name to set the key(symbol) and value pairs

# - What does the require_relative do? How is it different from
  # require?

  # require_relative allows the current file to reference the information
  # inside another file which is defined in '' after the require_relative
  # command using the name of the file that you want to reference 
  # require_relative is to simplify the general command require for a file within
  # the same directory as the file you are working on. To use only require
  # you must use the absolute file path

# - What are some ways to iterate through a hash?

  # You can use .each to iterate through each key-value pair
    # in a hash. You also use each_pair for every pair, each_key
    # for every key in the hash, or each_value to go through each
    # value of the hash.

# - When refactoring virus_effects, what stood out to you about
#   the variables, if anything?

  # When I examined the variables I realized that since each of the
  # variables needed as parameters was already set to an instance
  # variable during initialize that we shouldn't (and don't) need to
  # collect them as parameters again for each of the methods inside
  # of virus_effects. Therefore nealizing that we didn't need those
  # arguments and removed them from the method calls, also removing
  # the parameters from both of the methods' definitions.

# - What concept did you mostly solidify in this challenge?

  # Honestly, this challenge mostly helped me realize that I 
  # already understood a lot of what we needed to do. Reading through
  # the code I could pretty much identify what everything was
  # to do and how it all worked together. This challenge did help
  # me a little bit with identifying areas where refactoring 
  # could be done to make the code more dry.