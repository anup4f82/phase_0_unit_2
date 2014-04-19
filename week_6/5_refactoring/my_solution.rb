# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

class CreditCard

def initialize(array)
	@array = array
   if @array.length != 16
     return "Argument Error"
     break
   end 
end

def check_card
	@double = @array.map {|x| x*2}
	@bynine = @double.map {|x| x%9}
	@sum = @bynine.inject{|x,y| x+y}
	if @sum % 10 == 0
		true
	else
		false
	end
end

end





# Refactored Solution


class CreditCard

def initialize(card)
	@card = card
   if @card.to_s.length != 16
     return "Argument Error"
   end 
end

# Starting with the second to last digit, double every other digit until you reach the first digit

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)

# If the total is a multiple of ten, you have received a valid credit card number!

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