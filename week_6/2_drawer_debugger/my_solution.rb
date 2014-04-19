# U2.W6: Drawer Debugger


# I worked on this challenge with Butler Bushyhead


# 2. Original Code

class Drawer

  attr_reader :contents
  
 

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware

  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end
  
  def clean_silverware
    @clean = true
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


new_fork = Silverware.new("new_fork") #add some puts statements to help you trace through the code...
silverware_drawer.add_item(new_fork)
silverware_drawer.view_contents
removed_fork = silverware_drawer.remove_item(new_fork)
removed_fork.eat
silverware_drawer.view_contents

spork = Silverware.new("spork")
silverware_drawer.add_item(spork)
silverware_drawer.add_item(Silverware.new("butter knife")) 
silverware_drawer.view_contents
removed_spork = silverware_drawer.remove_item(spork)
removed_spork.eat
silverware_drawer.view_contents

# DRIVER TESTS GO BELOW THIS LINE


def assert
  raise "Assertion failed!" unless yield
end

test_drawer = Drawer.new
assert { test_drawer.view_contents == []}

spoon = Silverware.new("spoon")
test_drawer.add_item(spoon)
test_drawer.remove_item
spoon.eat
assert {spoon.eat == false}
test_drawer.dump
assert {test_drawer.view_contents == []}


# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# We had some problems with the Driver test code. Apart from that we were able to fix the code pretty quickly
# What questions did you have while coding? What resources did you find to help you answer them?
# Just getting the driver test code to pass
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# We were doing a string comparison for test_drawer.view_contents and couldnt get it to work
# Did you learn any new skills or tricks?
# Driver test code using assert
# How confident are you with each of the Learning Competencies?
# Very confident
# Which parts of the challenge did you enjoy?
# Getting the code to work was satisfying
# Which parts of the challenge did you find tedious?
# Driver test code