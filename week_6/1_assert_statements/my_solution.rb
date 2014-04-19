# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

#In the above code we have a method assert. It raises an exception when yield returns false.
#yield in the above case invokes the block and if name == bettysue it returns true if name is not bettysue it returns false




# 3. Copy your selected challenge here

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



# 4. Convert your driver test code from that challenge into Assert Statements


def assert
    
  raise "Assertion failed" unless yield 
end

 valid = CreditCard.new (4563960122001999)


invalid = CreditCard.new(1111111111111111)
assert {invalid.check_card == false}
 assert {valid.check_card == true}
 assert {valid.class == CreditCard}



# 5. Reflection
# What parts of your strategy worked? What problems did you face?
# I didnt face any problems for this challenge. I was familiar with yield and block concepts
# What questions did you have while coding? What resources did you find to help you answer them?
# None for this challenge
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I learnt how to use assert method to test code
# Did you learn any new skills or tricks?
# Assert method
# How confident are you with each of the Learning Competencies?
# Very confident
# Which parts of the challenge did you enjoy?
# Using assert statements to test was new and I found it useful
# Which parts of the challenge did you find tedious?
# None