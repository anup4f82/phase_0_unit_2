
#Pseudocode

# Create a function called essay_writer that takes in arguments - title,topic,date,thesis_statement,city,number
# Declare variable template1
# if pronoun = female, substitue he(exact pattern) with she and his with her
# Substitute title in template with value of title variable in template1
# Substitute topic in template with value of topic variable in template1
# Substiture date in template with value of date variable in template1
# Substitute thesis_statement with value of thesis_statement in template1
#Substitute city with value of city variable in template1
#Substitute number with value of Number variable in template1
# Split the template1 variable with '.'
# capitalize first word of every new sentence
# Print the Output


#initial solution
def essay_writer(title,topic,date,thesis_statment,pronoun,city,number)
    
template1 = "title: topic is the number President of USA.he was born on date in city on date.he manages Government effectively.his duties are:thesis_statment"
  

   if pronoun == 'female'
       template1.gsub!("he","she")
    template1.gsub!("his","her")
  
end

   
    template1.gsub!("title",title)
     template1.gsub!("date",date)
       template1.gsub!("topic",topic)
      template1.gsub!("thesis_statment",thesis_statment)
      template1.gsub!("city",city)
       template1.gsub!("number",number)

 new = template1.split(".")


 new.map!{|x| x..capitalize}

new.join(".")+"."
     
end





#refactored Solutions

def essay_writer(title,topic,date,thesis_statment,pronoun,city,number)
    
template1 = "title: topic is the number President of USA.he was born on date in city on date.he manages Government effectively.his duties are:thesis_statment"
  

   if pronoun == 'female'
       template1.gsub!(/\bhe\b/,"she")
    template1.gsub!("his","her")
  
end

   
    template1.gsub!("title",title)
     template1.gsub!("date",date)
       template1.gsub!("topic",topic)
      template1.gsub!("thesis_statment",thesis_statment)
      template1.gsub!("city",city)
       template1.gsub!("number",number)

 new = template1.split(".")


 new.map!{|x| x.slice(0,1).capitalize+x.slice(1..-1)}

 puts "\n#{title}\n\n#{new.join(".")}"+"."
     
end

essay_writer("Essay1","George Walker Bush","July 6, 1946","Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced","male","New Haven, Connecticut","43rd")

essay_writer("Essay2","Barack Obama","August 4, 1961","Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced","male","Honolulu,Hawaii","44th")

essay_writer("Essay3","Hillary Clinton","October 26, 1947","Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced","female","Chicago, Illinois","45th")


#Driver Test Code
template1 = "topic is the number President of USA.he was born on date in city on date.he manages Government effectively.his duties are:thesis_statment"
Essay1 = "George Walker Bush is the 43rd President of USA.He was born on July 6, 1946 in New Haven, Connecticut on July 6, 1946.He manages Government effectively.His duties are:Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced."
Essay2 = "Barack Obama is the 44th President of USA.He was born on August 4, 1961 in Honolulu,Hawaii on August 4, 1961.He manages Government effectively.His duties are:Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced."
Essay3 = "Hillary Clinton is the 45th President of USA.She was born on October 26, 1947 in Chicago, Illinois on October 26, 1947.She manages Government effectively.Her duties are:Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced."

p essay_writer("Essay1","George Walker Bush","July 6, 1946","Making treaties with other countries,with Senate approval Commanding the US armed forces,making sure that the US laws are enforced","male","New Haven, Connecticut","43rd") == Essay1


# Reflection
# What parts of your strategy worked? What problems did you face?
# This assignment was challenging for me. Since there was no rspec or driver code , and we basically had to come up with our own solution, it was tough.
# I used gsub! a lot to do my substitutions . Not sure if that was expected. Also I am not able to get my driver test code to pass when I compare strings
# What questions did you have while coding? What resources did you find to help you answer them?
# I had to research on gsub! and using regular expressions

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Basically how complex the code should be and what was expected. I wasnt sure and came up with the best possible solution I could think of.
# Did you learn any new skills or tricks?
# Yes gsub and liitle bit of Regular Expressions

# How confident are you with each of the learning objectives?
#Fairly confident
# Which parts of the challenge did you enjoy?
# Well seeing the output was great,
# Which parts of the challenge did you find tedious?
# Driver test code and just thinking of how I should code this and whats the expected output.
# 
# 
# 