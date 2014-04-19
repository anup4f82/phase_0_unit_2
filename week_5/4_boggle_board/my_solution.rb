# U2.W5: A Nested Array to Model a Boggle Board

<<<<<<< HEAD
# I worked on this challenge with Shawn Siebert
=======
# I worked on this challenge [by myself, with: ].
>>>>>>> origin/week_6

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
<<<<<<< HEAD
# Define a Class Board with the initializer as an array
# Define a Method create_word
#     The method create_word takes 1 argument called coords which will take 0 to many values
#     This method will create a new String based on the row number as first coord and column number as second coord using join
# Define a method get_row that takes one argument
#     it will return all the elements within the row number passed
# Define a method get_col takes one argument
#     Declare variable i and set it to 0
#     Declare empty array column_values
#     Loop through each sub-array and pushing values to column_values
#     incrementing i by 1
    

# Initial Solution
# class Board
#   def initialize(boggle)
#     @boggle = boggle
#   end
  
#   def create_word(board,*coords)

#   coords.map { |coord| board[coord.first][coord.last]}.join("")
#   end

#   def get_row(row)
#     @boggle[row]
#   end
  
#   def get_col(col)
    
#     col_values = []
#     @boggle.each do |x| 
#       col_values << x [col]
#       end
#     return col_values
#     end
    
#     def boggle_board(row,col)
#     @boggle[row][col]
#     end
# end
  
  
# Refactored Solution

class Board
  def initialize(boggle)
    @boggle = boggle
  end
  
  def create_word(board,*coords)

    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end


  def get_row(row)
    @boggle[row]
  end
  
  def get_col(col)
    
     col = @boggle.map{|x| x[col]}
     return col
  end
  

    def boggle_board(row,col)
    @boggle[row][col]
    end
end


# DRIVER TESTS GO BELOW THIS LINE
boggle = Board.new(boggle_board)
p boggle.get_row(1) == ["i","o","d","t"]
p boggle.get_col(2) == ["a","d","l","k"]
p boggle.boggle_board(0,1) == "r"


# Reflection 
# What parts of your strategy worked? What problems did you face?
# I worked with Shawn on this, Both of us were on the same wavelength and figured out the solution pretty easily.
# What questions did you have while coding? What resources did you find to help you answer them?
# We just had one question on when we use the each operator on how to use it for nested arrays
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
# Did you learn any new skills or tricks?
#Yes iterating over Nested arrays
# How confident are you with each of the learning objectives?
# very
# Which parts of the challenge did you enjoy?
# Working with Shawn and completing the solution
# Which parts of the challenge did you find tedious?
# None
=======

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 
>>>>>>> origin/week_6
