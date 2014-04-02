




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
  
# end
#    end

#Refactored solution

def separate_comma(n)
if n <1000
  return n.to_s
else
  new = n.to_s.split("")
  s = 0
  i = n.length
    while i > 3
      s = s+1
      a = 3*s
      new.insert(new.length-a,',')
      new1 = new[0..new.length-(a+1)]
      i = new1.length
        
    end
    
    return new.join("")
end

end