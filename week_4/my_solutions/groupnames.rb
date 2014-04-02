def acct(names)
    
    len = names.length
    g = len/4
    rem = len %4

  
  unit = Hash.new()
  
  for n in 1..3
  
  groups =  Hash.new()
  
  
  group = []
  used = []
  
 
  
for i in 1..g
  
  for s in 1..4
  
  
 
  a = 0+ rand(names.length-0)
  
 if (used.include?a)
      a = 0+ rand(names.length-0)
     redo
     end    
  used << a
  
  
  
 group << names[a]
    
    s+=1
     end
    
    groups["group"+i.to_s] = group
    
    group =[]
    
    i+=1
   
end
 
unit["unit"+n.to_s] = groups
n+=1
end
for i in 1..3
puts
puts "unit#{i} groups are:"
puts
puts"Group1: #{unit["unit#{i}"]["group1"].join(",")}"
puts "Group2: #{unit["unit#{i}"]["group2"].join(",")}"
puts "Group3: #{unit["unit#{i}"]["group3"].join(",")}"
puts "Group4: #{unit["unit#{i}"]["group4"].join(",")}"
puts "Group5: #{unit["unit#{i}"]["group5"].join(",")}"
puts "Group6: #{unit["unit#{i}"]["group6"].join(",")}"
end
end