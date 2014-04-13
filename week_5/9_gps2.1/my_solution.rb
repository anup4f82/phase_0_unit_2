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
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 



#  Reflection 



