# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class RPNCalculator

   
        
    @@c = 0
@@t = 0
    
@@d = 0
@@n =[]

#attr_accessor :calculator

def push(a)
    @@n << a


    

end



def minus
    


        len = @@n.size
 
  
        raise Exception, "calculator is empty" if len <=1  
   
   
if( len ==2)
       @@i = @@n[0]-@@n[1]
        @@n.pop
       @@n.pop
       @@n << @@i
       
   
   
 else
  value =  @@n[len-2]-@@n[len-1]
  @@i = value
  @@n.pop
  @@n.pop
  @@n<< value
  end
   
    
   end

def plus


len = @@n.size

raise Exception, "calculator is empty" if len <=1   
            
        
   if( len ==2)
       @@i = @@n[0]+@@n[1]
       @@n.pop
       @@n.pop
       @@n << @@i
       
   
   
 else
  value =  @@n[len-1]+@@n[len-2]
  @@i = value
  @@n.pop
  @@n.pop
  @@n<< value
  end
   
   end
       
       
  
def divide
 
        len = @@n.size
     raise Exception, "calculator is empty" if len <=1       
        
        
if( len ==2)
       @@i = @@n[0].to_f/@@n[1].to_f
        @@n.pop
       @@n.pop
       @@n << @@i
       
   
   
 else
  value =  @@n[len-2].to_f/@@n[len-1].to_f
  @@i = value
  @@n.pop
  @@n.pop
  @@n<< value
  end
   
   end


def times
 
        len = @@n.size
   raise Exception, "calculator is empty" if len <=1    
   
            
        
if( len ==2)
       @@i = @@n[0]*@@n[1]
        @@n.pop
       @@n.pop
       @@n << @@i
   
   
 else
  value =  @@n[len-2]*@@n[len-1]
  @@i = value
  @@n.pop
  @@n.pop
  @@n<< value
  end
   
   end

def value

@@i
end


end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
