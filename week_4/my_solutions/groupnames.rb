
#Pseudocode

# Create a array called fence_lizards and put 27 names in it

# Create a method called acct_groups that takes the array fence_lizards

# Declare a empty hash called unit
# for n in 1 to 3
# declare an empty array called used
# Declare a hash called groups
# Declare two variables i = 0 and m = 1
# Create 6 Keys in the groups hash and assign it a empty array
# for i in 1.. length of the array
# Used the ruby random number generator logic and assign it to a
# a = min + 0+ rand(max-min)
# if a is in array used, redo and get another randon number
# once a unique number is found put it in used array
# add the value in fence_lizards[a] to the group m hash(m will have values from 1 to 6 for 6 groups)
# increment m by 1, if m = 7, set m back to 1
# Keep looping till all the elements of the array fence_lizards are assigned to a group 
# Each time it loops it will assign to group[m] where initial value of m = 1 and increment it in the loop till it reaches 6
# assign Unit[unit1] to group
# loop through and assign Unit[unit2] and unit[unit3] as well...


#initial Solution

# def acct(names)
#len = names.length
# g = len/4
#rem = len %4
# unit = Hash.new()
  #   for n in 1..3
  #   groups =  Hash.new()
  #   group = []
#   used = []
  # for i in 1..g
  #   for s in 1..4
  #   a = 0+ rand(names.length-0)
  #  if (used.include?a)
#       a = 0+ rand(names.length-0)
#      redo
#      end    
#   used << a
#  group << names[a]
    #     s+=1
#      end
    #     groups["group"+i.to_s] = group
    #     group =[]
    #     i+=1
   # end
 # unit["unit"+n.to_s] = groups
# n+=1
# end
# for i in 1..3
# puts
# puts "unit#{i} groups are:"
# puts
# puts"Group1: #{unit["unit#{i}"]["group1"].join(",")}"
# puts "Group2: #{unit["unit#{i}"]["group2"].join(",")}"
# puts "Group3: #{unit["unit#{i}"]["group3"].join(",")}"
# puts "Group4: #{unit["unit#{i}"]["group4"].join(",")}"
# puts "Group5: #{unit["unit#{i}"]["group5"].join(",")}"
# puts "Group6: #{unit["unit#{i}"]["group6"].join(",")}"
# end
# end


#refactored solution

fence_lizards = ["Adam Dziuk","Adam Ryssdal","Aki Suzuki","Allison Wong","Andra Lally","Andrew McDonald","Anup Pradhan",
  "CJ Jameson","Christopher Aubuchon","Clark Hinchcliff","Devin A Johnson","Dominick Oddo","Dong Kevin Kang","Eiko Seino",
  "Eoin McMillan","Eric Wehrli","Hunter T. Chapman","Jacob Persing","Jon Pabico","Mary Huerster","Parjam Davoody","Samuel Davis",
  "Sebastian Belmar","Shawn Seibert ","William Butler Bushyhead","Yuzu Saijo","christiane kammerl"]



def acct_groups(fence_lizards)
    unit = Hash.new()
    for n in 1..3
used = []
groups = Hash.new(0)
i = 0
m = 1
groups["group1"]=  [] 
groups["group2"] = []
groups["group3"] = []
groups["group4"] = []
groups["group5"] = []
groups["group6"] = []

for i in 1..fence_lizards.length

   a = 0+ rand(fence_lizards.length-0)

    if (used.include?a)
    a = 0+ rand(fence_lizards.length-0)
     redo
     end  
      used << a
       groups["group"+m.to_s] << fence_lizards[a]
        m = m+1
        if m==7
         m = 1
     end
     
end
 unit["unit"+n.to_s] = groups
 end
  
#   for i in 1..3
# puts
# puts "UNIT #{i} groups are:"
# puts
# puts "Group1:\n#{unit["unit#{i}"]["group1"].join("\n")}"
# puts
# puts "Group2:\n#{unit["unit#{i}"]["group2"].join("\n")}"
# puts
# puts "Group3:\n#{unit["unit#{i}"]["group3"].join("\n")}"
# puts
# puts "Group4:\n#{unit["unit#{i}"]["group4"].join("\n")}"
# puts
# puts "Group5:\n#{unit["unit#{i}"]["group5"].join("\n")}"
# puts
# puts "Group6:\n#{unit["unit#{i}"]["group6"].join("\n")}"

# end
 
 return unit
 end
 
 
 # Driver test code
 p acct_groups(fence_lizards).class == Hash 
  p acct_groups(fence_lizards)["unit1"].length==6 # 6 groups in each unit
  p acct_groups(fence_lizards)["unit2"].length==6 # 6 groups in each unit
  p acct_groups(fence_lizards)["unit3"].length==6 # 6 groups in each unit

# Check to see if none of the groups in each unit have same students.
p acct_groups(fence_lizards)["unit1"]["group1"] &  acct_groups(fence_lizards)["unit1"]["group2"] & acct_groups(fence_lizards)["unit1"]["group3"] & acct_groups(fence_lizards)["unit1"]["group4"] & acct_groups(fence_lizards)["unit1"]["group5"]  & acct_groups(fence_lizards)["unit1"]["group6"] == []
 
p acct_groups(fence_lizards)["unit2"]["group1"] &  acct_groups(fence_lizards)["unit2"]["group2"] & acct_groups(fence_lizards)["unit2"]["group3"] & acct_groups(fence_lizards)["unit2"]["group4"] & acct_groups(fence_lizards)["unit2"]["group5"]  & acct_groups(fence_lizards)["unit2"]["group6"] == []

p acct_groups(fence_lizards)["unit3"]["group1"] &  acct_groups(fence_lizards)["unit3"]["group2"] & acct_groups(fence_lizards)["unit3"]["group3"] & acct_groups(fence_lizards)["unit3"]["group4"] & acct_groups(fence_lizards)["unit3"]["group5"]  & acct_groups(fence_lizards)["unit3"]["group6"] == []


#Reflection

# What parts of your strategy worked? What problems did you face?
# # My initial solution was only working if the number of people in the array is divisible by 4.. I guess I wanted to get started to just came up with the whatever
# I could think of.
# What questions did you have while coding? What resources did you find to help you answer them?
# I had to research on how to generate random number, redo loop, How to have the value of hash as array.
# I also was confused with the 'Driver test code'. But finally got it. I wanted to output the names in each unit and each of the 6 groups. I havve the code
# for it, But then it wasnt testing all my 'driver code'.. I need to figure it out. It was only outputting the first driver test code result
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None. Like I said I had to look up random number generatot and redo loop syntax
# Did you learn any new skills or tricks?
#redo loop,random number, 
# How confident are you with each of the learning objectives?
# very confident
# Which parts of the challenge did you enjoy?
# it was fun to see the Output
# Which parts of the challenge did you find tedious?
# figuring out the driver test code 