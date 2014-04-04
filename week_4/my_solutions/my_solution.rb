
#Pseudocode
# Create a Method Separate_comma that takes a Number n(Fixnum)
# if the n < 1000 return Number
# else
# Split the number and put in a array using Split method
# Declare two variables s and t and set them to 0
#Declare variable i and set to length of the array
# While i > 3 (In my code I put a commma before the last three elements of the array and then extract the array before it. and then set i to the new length
  #Only if i > 3 I continue the loop)
# increment s by 1
# Set variable a = 3*s+1 [ I use this variable to decide the position I will put the comma in. using the formula length of array -a ]
# Insert a comma in the position [(length of array) - a] and name this array 'new'
# Create a new array called new1 which will have the elements of array before the ','
# Set variable i to length of array new1
#increment t by 1
#Continue looping till all the commas are placed and number of elements before the comma are less than 3
# return the Number by using Join.

# initial solution
# def separate_comma(n)
#     if n <1000
#         return n.to_s
       
#     elsif (n> 999 && n <1000000)
#      new = n.to_s.split("")
#      new.insert(new.length-3,',')
#      return new.join("")
     
#     elsif (n> 999999 && n <10000000000)
#      new = n.to_s.split("")
#     new1 = new.insert(new.length-3,',')
#      new2 = new1.insert(new1.length-7,',')
#      return new2.join("")
# 
  
# end
#    end

#Refactored solution

def separate_comma(n)
if n <1000
  return n.to_s
else
  new = n.to_s.split("")
  s = 0
  t = 0
  i = new.length
  
    while i > 3
      s = s+1
      a = 3*s+t
      new.insert(new.length-a,',')
      new1 = new[0..new.length-(a+2)]
      i = new1.length
        t = t+1
    end
    
    return new.join("")
end

end

# Driver testCode

puts separate_comma(1000) == "1,000"
puts separate_comma(100) == "100"
puts separate_comma(1000000) == "1,000,000"
puts separate_comma(10000000) == "10,000,000"

# Reflection

# What parts of your strategy worked? What problems did you face?

# Initially when I started coding and came up with the solution it was working only for numbers upto 10000000000. But then I had to think about making the solution
#effecient enough so it will work with any number. Just coming up with the logic took a little time. Had to test the code and make changes to get the desired
#result
# What questions did you have while coding? What resources did you find to help you answer them?
# I havent used the 'insert' method much, So had to look up the syntax.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
# Yes Array insert
# How confident are you with each of the learning objectives?
# Very
# Which parts of the challenge did you enjoy?
# Yes this was fun
# Which parts of the challenge did you find tedious?
# It wasnt tedious at all