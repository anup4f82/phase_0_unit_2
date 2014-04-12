# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


class CreditCard

def initialize(card)

@card = card
if @card.to_s.length !=16
raise ArgumentError, 'Digits not equal to 16'
end
end
def check_card

 a = @card.to_s.split("")
len = (@card.to_s.length)-1

c = []

for i in 0..len

if (i==0 || i%2 == 0)

n = a[i].to_i*2

if n.to_s.length > 1
   n =  n.to_s.split("")
   
    c <<  n[0].to_i
    c << n[1].to_i
else
    c << n
end
    
else 
    c<< a[i].to_i
end

end  
if  (c.reduce(:+) % 10 == 0)
    return true
else
    return false
end
end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
