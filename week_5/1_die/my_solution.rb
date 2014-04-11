# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself

# 2. Pseudocode

# Create a Class Called Die
# Create the initializer method that takes argument as sides and creates a Instance variable @sides
# If @ sides < 1 then raise a ArgumentError
# Create a method called sides, which returns the number of sides.
# Create a method called roll which returns a random number between 1 and the number of sides.

# Input:
# Output:
# Steps:


# 3. Initial Solution

# class Die
#   def initialize(sides)
   
#     @sides = sides

#      if @sides < 1 
# 	raise ArgumentError, 'Expected 1 got 0'
# end

#   end
  
#   def sides
#     @sides
#   end
  
#   def roll
#     return  1+ rand(@sides)
#   end
# end




# 4. Refactored Solution

class Die
  def initialize(sides)
   
    @sides = sides

     if @sides < 1 
  raise ArgumentError, 'Expected 1 got 0'
end

  end
  
  def sides
    @sides
  end
  
  def roll
    return  (1..@sides).to_a.sample
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE
d  = Die.new(6)
 p (d.sides) == 6
p (d.instance_of?(Die)) 
p (d.instance_variables).length == 1




# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# I didnt face any problems. Had to find the syntax for 'raise' and had to research a bit on Driver test code
# What questions did you have while coding? What resources did you find to help you answer them?
# None for this assignment
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
# Yes syntax for raise
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# playing with objects, classes is fun
# Which parts of the challenge did you find tedious?
#None