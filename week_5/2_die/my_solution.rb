# U2.W5: Die Class 2: Arbitrary Symbols


<<<<<<< HEAD
# I worked on this challenge by myself
# 2. Pseudocode
# Input: array of strings
# Output: Random side from the array
# Steps:
# Define a Class Called Die 
# Define initialize method for class Die that takes in argument as an array called labels and creates instance variable @labels
# If @lables is empty then raise a ArgumentError
# Define a method called sides which returns the length of the array @labels
#Define a method called roll that returns a random value in the array @labels


=======
# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:
>>>>>>> origin/week_6


# 3. Initial Solution

<<<<<<< HEAD
# class Die
#   def initialize(labels)
      
#       @labels = labels

#        if @labels.empty?
# 	raise ArgumentError, 'Empty'
# end
#   end

#   def sides
#       return @labels.length
#   end

#   def roll

#   	 return @labels.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
      
      @labels = labels

       if @labels.empty?
  raise ArgumentError, 'Empty'
end
  end

  def sides
      return @labels.length
  end

  def roll

     return @labels.sample
=======
class Die
  def initialize(labels)
  end

  def sides
  end

  def roll
>>>>>>> origin/week_6
  end
end



<<<<<<< HEAD

# 1. DRIVER TESTS GO BELOW THIS LINE
label = ["A","B","C","D","E","F"]

dice = Die.new(label)

p (dice.sides) == 6
p (dice.instance_of?(Die)) == true

p label.include?(dice.roll) == true
=======
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


>>>>>>> origin/week_6




# 5. Reflection 
<<<<<<< HEAD
# What parts of your strategy worked? What problems did you face?
# I didnt face any problems. Coming with Driver test code is sometimes tricky. 
# What questions did you have while coding? What resources did you find to help you answer them?
# None for this assignment
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
# No
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# rspec passing feels good.
# Which parts of the challenge did you find tedious?
#None
=======
>>>>>>> origin/week_6
