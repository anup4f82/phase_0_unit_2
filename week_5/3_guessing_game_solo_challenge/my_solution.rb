# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself
# Define a Class called GuessingGame
# Define a initializer method for the Class Guessingame which takes one argument 'answer' .Create and Set the instancevariable @answer to answer
# Define a method called guess which takes argument as guess,Create and set instance variable @guess to guess
# if @guess < @answer return low, 
#     elseif @guess > @answer return high 
#             else return correct
#Define a method called solved? which takes returns false if @answer not equal to @guess, else returns true.


# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# class GuessingGame
    
    
    
#   def initialize(answer)
  
#     @answer = answer
#   end

#   def guess(guess)

#       @guess = guess
      
#       if @guess < @answer 
#           return :low
#       elsif @guess > @answer
#          return :high
#      else 
#          return :correct
         
#     end
#   end
  
#   def solved?
#      if @guess != @answer 
#          return false
#      else true
#          end
     
# end


# end

# 4. Refactored Solution

    class GuessingGame
  def initialize(answer)
  
    @answer = answer
  end

  def guess(guess)

      @guess = guess
      
      if @guess < @answer 
          return :low
      elsif @guess > @answer
         return :high
     else 
         return :correct
         
    end
  end
  
  def solved?
     if @guess != @answer 
         return false
     else true
         end
     
end


end





# 1. DRIVER TESTS GO BELOW THIS LINE


ans = GuessingGame.new(5)
p (ans.guess(2)) == :low
p (ans.guess(7)) == :high
p (ans.guess(5)) == :correct






# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# I didnt face any problems. This was pretty straightforward
# What questions did you have while coding? What resources did you find to help you answer them?
# How to use instance variables,create objects
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
# Creating objects,instance variables.
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# rspec passing feels good.
# Which parts of the challenge did you find tedious?
#None