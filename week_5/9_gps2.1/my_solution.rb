<<<<<<< HEAD
# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Emmanuel
# 2)Anup

 # This is the file you should end up editing. 
 
 # I have 2 solutions for this in the first case I am camparing the fav_food to cake,pie or cookie
 # and then setting the value of cake_qty, pie_qty, cookie_qty, This works all the driver test code passes
 
 # 2nd Solution - I am declaring Instance variables (@pie_qty,@cake_qty,@cookie_qty) and in the code using this line 
 #code to set a value to the Instancevariable - 
 #instance_variable_set "@"+fav_food+"_qty", num_of_people / my_list[fav_food]
 
 # I couldnt find a way to create and set local variable at runtime. Is there a way??
 
 # I have added Solution # 2 below:
 
 #Solution # 1
# def bakery_num(num_of_people, fav_food)
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # serving size
#   pie_qty = 0
#   cake_qty = 0
#   cookie_qty = 0
  
#   has_fave = false

#   my_list.each_key do |k|
#     if k == fav_food
#       has_fave = true
#       fav_food = k
#     end
#   end
#   if has_fave == false
#     raise ArgumentError.new("You can't make that food")
#   else
#     fav_food_qty = my_list.values_at(fav_food)[0]
#   if num_of_people % fav_food_qty == 0
#     num_of_food = num_of_people / fav_food_qty
#     return "You need to make #{num_of_food} #{fav_food}(s)."
  
#   else 
      

  
#     if fav_food == "cake"
#          cake_qty = num_of_people / my_list[fav_food]
#          elsif fav_food = "pie"
#          pie_qty = num_of_people / my_list[fav_food]
#      else cookie_qty = num_of_people / my_list[fav_food]
         
# end
#     num_of_people = num_of_people % fav_food_qty
#   # first, get quantity of fav food
#   # THAN figure out remainder
#   # THAN figure out other foods to make
  
#   # After quantity of fav food is decided, run other foods with remainder as num of people
  
#   # 41 / my_list[fav_food] << 6
#   # 41 / 6  = 6 << number of fav foods made(cake) 
#   # remainder = 5
  
#     while num_of_people > 0
#       if num_of_people / my_list['pie'] > 0
#         pie_qty = num_of_people / my_list["pie"]
#         num_of_people = num_of_people % my_list["pie"]
#       elsif num_of_people / my_list["cake"] > 0
#         cake_qty = num_of_people / my_list["cake"]
#         num_of_people = num_of_people % my_list["cake"]
#       else
#         cookie_qty = num_of_people
#         num_of_people = 0
#       end
#     end
#     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
#     end
#   end
# end
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # serving size
  @pie_qty = 0
  @cake_qty = 0
  @cookie_qty = 0
  
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
      fav_food = k
    end
  end
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0]
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  
  else 
      

    
instance_variable_set "@"+fav_food+"_qty", num_of_people / my_list[fav_food]


 
 num_of_people = num_of_people % fav_food_qty

  
    while num_of_people > 0
      if num_of_people / my_list["pie"] > 0
        @pie_qty = num_of_people / my_list["pie"]
        num_of_people = num_of_people % my_list["pie"]
      elsif num_of_people / my_list["cake"] > 0
        @cake_qty = num_of_people / my_list["cake"]
        num_of_people = num_of_people % my_list["cake"]
      else
        @cookie_qty = num_of_people
        num_of_people = 0
      end
    end
    return "You need to make #{@pie_qty} pie(s), #{@cake_qty} cake(s), and #{@cookie_qty} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
=======
# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution









>>>>>>> origin/week_6
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
<<<<<<< HEAD
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
=======
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

>>>>>>> origin/week_6



#  Reflection 

<<<<<<< HEAD
# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# I worked on this challenge with Emmanuel. During the session I had to read the code ,understand it and fix it. I did suggest a couple of ideas but could not 
#finish the solution during the session. I did complete it after
# What questions did you have while coding? What resources did you find to help you answer them?
# In this case we had to assign value to a dynamic variable depending on user input. I did a bit of research and decided to use 'instance variables'
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had to research a lot on how to create variables during runtime. I finally figured out how to create instance variables dynamically, but not sure how to do the 
#same for local variables
# Did you learn any new skills or tricks?
# Yes dynamically creating instance variables
# How confident are you with each of the learning objectives?
# Fairly confident
# Which parts of the challenge did you enjoy?
# How to dynamically create Instance variables
# Which parts of the challenge did you find tedious?
# researching on how to dynamically create 'variables'
=======

>>>>>>> origin/week_6

