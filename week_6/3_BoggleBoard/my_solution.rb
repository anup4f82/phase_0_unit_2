# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with Shawn Siebert


# 2. Pseudocode

# Create a Class Called BoggleBoard
  # Create a initialize method that takes the nested array as input
  # Create a method called create_word that takes in the argument '*coords'.
  # It loops through each element of the coords and fetches the element of the nested array @boggle using the co-ordinates and then Joins them and outputs
  # a string
  #Create a method called get_row that takes argument as row and returns the elements of that row as a string(using join) 
  # Create a method called get_col that takes argument as col and returns all the elements of that col as a string (using join)
   # Create a method called get_character that takes two arguments row,col and returns the element at position row,col in the @boggle array

# 3. Initial Solution
# class BoggleBoard

#   def initialize(boggle)
#     @boggle = boggle
#   end
  
#   def create_word(*coords)
#     coords.map { |coord| @boggle[coord.first][coord.last]}.join("")
#   end
  
#   def get_row(row)
#     @boggle[row].join("")
#   end
  
#   def get_col(col)
#     col = @boggle.map {|x| x[col]}.join("")
#   end
    
#     def get_character(row,col)
#     @boggle[row][col]
#     end
# end
 
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
 

 


# 4. Refactored Solution

class BoggleBoard

  def initialize(boggle)
    @boggle = boggle
  end
  
  def create_word(*coords)
    coords.map { |coord| @boggle[coord.first][coord.last]}.join("")
  end
  
  def get_row(row)
    @boggle[row].join("")
  end
  
  def get_col(col)
    col = @boggle.map {|x| x[col]}.join("")
  end
    
    def get_character(row,col)
    @boggle[row][col]
    end
end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
boggle_board = BoggleBoard.new(dice_grid)
p boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock" 
p boggle_board.get_row(0) 
p boggle_board.get_col(0) 
p boggle_board.get_row(1) 
p boggle_board.get_col(1) 
p boggle_board.get_row(2) 
p boggle_board.get_col(2) 
p boggle_board.get_row(3) 
p boggle_board.get_col(3) 
p boggle_board.get_character(3,2) == "k"



# Object-oriented vs Procedural

# With Object oriented programming you can define a class with methods and create objects with different characteristics(arguments) and use the methods of the 
#Class to perform actions. Wih procedural programming, everytime you will need to call the function and pass parameters to get what you want
#OOP also allows you to inherit methods of another class into your class and use those methods.


# 5. Reflection

# What parts of your strategy worked? What problems did you face?
# Since we already had worked on the Boggle_board assignment last week we didnt face any issues
# What questions did you have while coding? What resources did you find to help you answer them?
# None for this challenge
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
# Just the driver test code - got more expereince
# How confident are you with each of the Learning Competencies?
# Very confident
# Which parts of the challenge did you enjoy?
# getting the driver code to work
# Which parts of the challenge did you find tedious?
# None