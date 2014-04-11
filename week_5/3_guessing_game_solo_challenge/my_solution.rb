# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
    
    
    
  def initialize(answer)
    # Your initialization code goes here
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

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
