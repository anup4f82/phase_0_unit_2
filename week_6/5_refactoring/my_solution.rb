# U2.W6: Refactoring for Code Readability


# I worked on this challenge with Yuzu Saijo


# Original Solution

# class CreditCard

# def initialize(array)
# 	@array = array
#    if @array.length != 16
#      return "Argument Error"
#      break
#    end 
# end

# def check_card
# 	@double = @array.map {|x| x*2}
# 	@bynine = @double.map {|x| x%9}
# 	@sum = @bynine.inject{|x,y| x+y}
# 	if @sum % 10 == 0
# 		true
# 	else
# 		false
# 	end
# end

# end





# Refactored Solution


class CreditCard

def initialize(card)
	@card = card
   if @card.to_s.length != 16
     return "Argument Error"
   end 
end



def check_card
	card_number = @card.to_s.split("")
	double_arr = []
	i = 0
	card_number.map!{|x| x.to_i}
  card_number.each do |x|
      if i%2 == 0
        double_arr << x*2
      else
        double_arr << x
      end
      i+=1
    end
    
    sum = 0
    double_arr.map!{|x| x.to_i}
    double_arr.each do |y|
      if y<10
        sum+=y
      else
        sum+= 1+ y%10
      end
    end
    
 	if sum % 10 == 0
		true
	else
		false
	end
end

end

# DRIVER TESTS GO BELOW THIS LINE

def assert
 raise "Assertion failed" unless yield
end
creditcard = CreditCard.new(4563960122001999)
creditcard_bad = CreditCard.new(1111111111111111)
assert{creditcard.check_card == true} 
assert{creditcard_bad.check_card == false}




# Reflection 

# What parts of your strategy worked? What problems did you face?
# Having done this challenge in week 5 helped. When we re-factored the solution, we initially got an error, but figured out why its failing pretty quickly

# What questions did you have while coding? What resources did you find to help you answer them?
# None
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None. we just had some errors when we tested the code , but we fixed it
# Did you learn any new skills or tricks?
# Yes Yuzu had a new way to code the valid credit card and I had not thought of that approach
# How confident are you with each of the Learning Competencies?
# Very confident
# Which parts of the challenge did you enjoy?
# Learning a new way to code the solution
# Which parts of the challenge did you find tedious?
# None