# U2.W4: Cipher Challenge


<<<<<<< HEAD
# I worked on this challenge with Yuzu Saijo
=======
# I worked on this challenge [by myself, with: ].
>>>>>>> origin/week_6



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



<<<<<<< HEAD
# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Creating an array called input, by using a split method, taking a message and breaking into each character, and downcasing it.
#   decoded_sentence = [] # Creating an empty array called decoded_sentence
#   new = ('a'..'z').to_a
#   cipher = Hash.new()
#   for i in 0..new.length-1
#   cipher[new[i]] = new[i-4]
#   end
#   cipher = {"e" => "a",   # Creating a hash called cipher
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # .each will loop through all the elements of the array 'input'
#     found_match = false  #declaring a variable named found_match and assigning boolean value of false
#     cipher.each_key do |y| # each_key will loop through all the keys of the 'cipher' hash
#       if x == y  # This is comparing each element of input array to each key of the Cipher hash
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."# printing the string ..
#         decoded_sentence << cipher[y] # pushing the hash value into the decoded sentence array
#         found_match = true #Assigning boolen value of true to found_match.
#         break  # stopping the process here to avoid going through unecessasry conditions
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # Checking if the element is a special character
#         decoded_sentence << " " # pushing a space into the decoded_sentence 
#         found_match = true # Assigning boolen value of true to found_match.
#         break # stopping the process here to avoid going through unecessasry conditions
#       elsif (0..9).to_a.include?(x) # checking if the element is a number
#         decoded_sentence << x # pushing the number into the decoded_sentence
#         found_match = true # Assigning boolen value of true to found_match.
#         break # stopping the process here to avoid going through unecessasry conditions
#       end 
#     end
    
 
#     if not found_match  # checking if the element is not in the input array
#       decoded_sentence << x # push the element into the decoded_sentence
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") #creating the sentence by joining 
 
#   if decoded_sentence.match(/\d+/)  #if the decoded_sentence has the numeric characters
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # replacing the numeric characters with the number divided by 100
#   end  
#   return decoded_sentence # returning the decoded_sentence    
# end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = [] 
  alphabet = ('a'..'z').to_a
  cipher = Hash.new()
  for i in 0..alphabet.length-1
  cipher[alphabet[i]] = alphabet[i-4]
  end
  input.each do |x| 
    found_match = false 
    cipher.each_key do |y| 
      if x == y 
        decoded_sentence << cipher[y] 
        found_match = true 
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " " 
        found_match = true 
        break 
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        found_match = true 
        break
      end 
    end
    if not found_match  
      decoded_sentence << x 
    end
  end
  decoded_sentence = decoded_sentence.join
 
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence    
end

=======
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end

# Your Refactored Solution

>>>>>>> origin/week_6




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
<<<<<<< HEAD
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") =="our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")=="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")=="next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")=="can somebody just get me 100 bags of cool ranch doritos?" 
# Reflection
 
#  What parts of your strategy worked? What problems did you face?
# For this assignment I was paired with Yuzu. We were able to solve this challenge pretty fast. When we re-factored our code we did not get the 
#expected output first. But they realized our mistake and fixed it
# What questions did you have while coding? What resources did you find to help you answer them?
# I wasnt sure why we need 'break', but then Yuzu explained me it will improve processing time. We also had to research on the regular expression
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
# Using 'range' and creating an array from it
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# Just the fact that the re-factored code worked was satisfying
# Which parts of the challenge did you find tedious?
# None
=======
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 
>>>>>>> origin/week_6
