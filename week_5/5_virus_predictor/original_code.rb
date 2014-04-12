# U2.W5: Virus Predictor

# I worked on this challenge by myself

# Run the code. Look at the output. Look at the input (it's in the other file). Explain what the program is doing.
# The code is using the State_data Hash as input and predicting the Number of deaths and time taken to lose the people. To do that we have to create a new object per state
# and pass the state_of_origin#,population_density,population,region and regional_spread as arguments and then use the predicted_deaths and speed_of_spread methods
# to outut the result.
# Write a comment explaining the require_relative statement - You should be somewhat familiar with this by now.
# require_relative Statement means the file state_data is in the same directory as the original_code.rb file. When we run the code it will search for the file 
#state_data in this directory.
# Take a look at the state_data file. What is going on with this hash? What does it have in it? (HINT: There are two different syntax used for hashes here. What's the difference?)
# The State_data hash is a Nested hash, with the State as the inner hash and then the State data as the innermost hash. There are two ways to create Key value
#pairs in a Hash. One is using the => and the other is using colons.
# Comment each method and define it's responsibility.
# New Feature: create a report for all 50 states, not just the 4 listed below. Is there a DRY way of doing this?
# Refactor the virus_effects method. (HINT: what is the scope of instance variables?)
# Instance variables are available across all the methods of the Class for which the object is created. Once we create an object for a Class, the Instance variables
# are valid for the state of that object.
# What is the purpose of "private". What happens if you move it elsewhere in the class?
# private - Any methods that are after the keyword private are private methods. They cant be called with a explicit receiver. e.gL you cant use alabama.predicted_deaths directly
#
# Refactor the private methods predicted_deaths and speed_of_spread. How can you make them more DRY?
#
# BONUS: Access the population by calling it on the instance.


require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

# This method calls the predicted_deaths method and speed_of_spread method by passing in the instance variables as arguments.

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
  end

   private 

   # This method takes in the argument as population_density ,population and state and then calculates and outputs the number of deaths

  # def predicted_deaths(population_density, population, state)
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else 
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end


   #Re-factored Solution for predicted_deaths - We dont need the arguments, since instance variables are available across all methods.

  def predicted_deaths
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
  

   end


  # this method calculates the speed at which the virus will spread.

  # def speed_of_spread(population_density, state) #in months
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else 
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"

  # end

# Re-factored method - speed_of_spread - We dont need arguments,since instance variables are available across all the methods.

  def speed_of_spread #in months
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

# Refactored the Object instantiation
 
STATE_DATA.each do |x,y|


  a = VirusPredictor.new(x,STATE_DATA[x][:population_density], STATE_DATA[x][:population], STATE_DATA[x][:region], STATE_DATA[x][:regional_spread]) 

 a.virus_effects
 
   end




# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects