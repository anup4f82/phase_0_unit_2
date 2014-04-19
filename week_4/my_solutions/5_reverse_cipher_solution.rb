# U2.W4: Refactor Cipher Solution


<<<<<<< HEAD
# I worked on this challenge by myself
=======
# I worked on this challenge [by myself, with: ].
>>>>>>> origin/week_6


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

<<<<<<< HEAD
def translate_to_cipher(sentence)   #  Create a method called translate_to_cipher
    alphabet = ('a'..'z').to_a       # Create a array called alphabet that contains all the alphabets. Here (a..z) is a range and ._a converts the range to an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # Shifts the elements of the array by the count specified in the brackets
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # Create an array  called spaces with special characters
    
    original_sentence = sentence.downcase # downcase method puts all the elements of sentence to lower letters
    encoded_sentence = [] # declare empty array called encoded_sentence
    original_sentence.each_char do |element|  # Iterate throuth each character of the original sentence 
      if cipher.include?(element) #  Returns true if the character in original sentence is a 'key' in cipher hash
        encoded_sentence << cipher[element] # If true then it puts the value from cipher hash into the encoded_sentence array
      elsif element == ' '  #  If the first if returns false, it checks if the element in original_sentence is equal to 'spaces'
        encoded_sentence << spaces.sample  # sample returns a random number from the array and pushes it into the encoded_sentence array
      else 
        encoded_sentence << element   # If no match is found it just puts the element into the encoded_sentence as is.
      end
     end
    
    return encoded_sentence.join # returns the encoded sentence by using join.
=======
def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
>>>>>>> origin/week_6
end


# Questions:
# 1. What is the .to_a method doing?
<<<<<<< HEAD
# It converts the range into an array. 
# 2. How does the rotate method work? What does it work on?
# Rotate method works on arrays. It is used to shift the elements of the array by the count mentioned in paranthesis and returns a new array with the elements rotated.
# 3. What is `each_char` doing?
# each_char iterates on each character of the 'sentence'
# 4. What does `sample` do?
# sample is a random number generator for arrays. array.sample will give one random number from the array. array.sample(3) will give 3 random elements from array
# 5. Are there any other methods you want to understand better?
#No. Though I wasnt aware of 'rotate' and 'sample' they were pretty easy to understand once I used them in IRB
# 6. Does this code look better or worse than your refactored solution
# looks a lot cleaner and smaeter
#    of the original cipher code? What's better? What's worse?
# This looks a lot better. Its compact using ruby in-built methods to make the code look a lot cleaner
# 7. Is this good code? What makes it good? What makes it bad?
# it is good code. The fact that its easy to understand and uses Ruby methods to reduce the number of lines of code.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# No it doesnt. The reason for that is we are using the spaces.sample method to generate a random special character from the spaces array
p translate_to_cipher("I want cookies") 
=======
# 2. How does the rotate method work? What does it work on?
# 3. What is `each_char` doing?
# 4. What does `sample` do?
# 5. Are there any other methods you want to understand better?
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad?


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
>>>>>>> origin/week_6
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

<<<<<<< HEAD
# What parts of your strategy worked? What problems did you face?

# Having done the 'group_cipher challenge' already , helped me understand whats going on and didnt have to spend too much time to understand what the code
# is doing

# What questions did you have while coding? What resources did you find to help you answer them?
# None. I had to research on 'rotate' and 'sample' methods
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None. Yes I wasnt aware of 'sample' and 'rotate' methods
# Did you learn any new skills or tricks?
# Yes 'rotate' and 'sample'
# How confident are you with each of the learning objectives?
#very confident
# Which parts of the challenge did you enjoy?
# Learning new ruby methofds 'rotate' and 'sample'
# Which parts of the challenge did you find tedious?
# None.
=======
>>>>>>> origin/week_6
