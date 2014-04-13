# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself

# 2. Pseudocode

# Input: - Credit card Number
# Output: - True or false - Validate if credit card number is valid
# Steps:
# Define a class Called CreditCard
# Define the initializer method that takes argument as card and creates a instance variable @card and set it to card
# If @card.length is not equal to 16 it raises a error
# Define a method called check_card that checks the credit card validity
# Create an array of all the card Numbers using the split method
# Using the map method convert the array elements to integers
# Declare a variable i and set it to -1
# Using the map method , Multiply array element by 2 if its at even position, else leave it as is and set it to card_num
# Using the map method, split the numbers if their length is greater than 1 and use flatten method to flatten the array and another map to convert
# array elements to integers and assign it to another array card_num
# Use reduce to calculate the total of the array new2 
# if the total is divisible by 10 return true else return false
#end


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


# class CreditCard

# def initialize(card)

# @card = card
# if @card.to_s.length !=16
# raise ArgumentError, 'Digits not equal to 16'
# end
# end
# def check_card

#  a = @card.to_s.split("")
# len = (@card.to_s.length)-1

# c = []

# for i in 0..len

# if (i==0 || i%2 == 0)

# n = a[i].to_i*2

# if n.to_s.length > 1
#    n =  n.to_s.split("")
   
#     c <<  n[0].to_i
#     c << n[1].to_i
# else
#     c << n
# end
    
# else 
#     c<< a[i].to_i
# end

# end  
# if  (c.reduce(:+) % 10 == 0)
#     return true
# else
#     return false
# end
# end
# end



# 4. Refactored Solution

class CreditCard

def initialize(card)

@card = card
if @card.to_s.length !=16
raise ArgumentError, 'Digits not equal to 16'
end
end

def check_card

 card_num = @card.to_s.split("")
 card_num.map!{|x| x.to_i}
 i = -1
  card_num = card_num.map{|x| i+=1;(i %2 == 0 ? x*2 :x) }
 card_num = card_num.map{|x| (x.to_s.length > 1? x.to_s.split("") :x)}.flatten.map{|x| x.to_i}


if  (card_num.reduce(:+) % 10 == 0)
    return true
else
    return false
end
end


end




# 1. DRIVER TESTS GO BELOW THIS LINE


valid = CreditCard.new(4563960122001999)
p (valid.check_card) == true
invalid = CreditCard.new(1111111111111111)
p (invalid.check_card) == false

p (valid.class) == CreditCard



# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# My initial solution was lengthy but it worked. I decided to play around with array map for my refactored solution and had to read and reasearch a lot
# on it and finally got it :)
# What questions did you have while coding? What resources did you find to help you answer them?
# I was basically trying to use map to re-factor and had to research a bit on it.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Using map 
# Did you learn any new skills or tricks?
# Array map
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# rspec passing feels good.
# Which parts of the challenge did you find tedious?
# figuring out how to use map took some time.