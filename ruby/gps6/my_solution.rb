
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative lets the file know that there is another file that would be needed 
#for the the file to run correctly using the relative path. 
#Require_relative is different from require because in require, there would be already data in the 
#file that would be given access too.
require_relative 'state_data'

class VirusPredictor
#this first method is initialize the data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calling the methods and taking the different arguements needed for this type of method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
#the purpose of using private is that the method can not be called by a parent file. A private is used when you dont want the public to have access to the method.
  private
#this method would create the variable numeber of deaths which would do a calculation with the population instance variable.
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
#this method would create the speed variable by calculating the speed of the virus spread using the population density given then printing out the results at the end. 
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
#new code
 # runs the code for each of the states
 # this belongs outside of the class because it is printing out the final information for each of the states. the calulations were already done inside the methods, this would be used to print out all of the data that was used for all of the 50 states instead of using only 4 states
STATE_DATA.each do |new_state, new_state_data|
  predictor = VirusPredictor.new(new_state, new_state_data[:population_density], new_state_data[:population])
  predictor.virus_effects
end
#old code
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
   # the difference between the two different hash syntaxes are that one is useing a string and one is using a symbol. 

#What does require_relative do? How is it different from require?
    #require relative lets the file know that another file is needed to function and that it is located in the same directory where as require would need the full absolute pathway to work correctly.

#What are some ways to iterate through a hash?
  # one way of iterating through a hash is using .each which would go through all the hashes. 

#When refactoring virus_effects, what stood out to you about the variables, if anything?
  #in the virus_effect method, there were variables also shown which would not be needed because they are known as instance variables. 

#What concept did you most solidify in this challenge?
  # the concept that i most solidfied was the use of scope and different instance variables, how symbols work, the differences between relative_require and require.    