# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
Define a Class Board with the initializer as an array
Define a Method create_word
    The method create_word takes 1 argument called coords which will take 0 to many values
    This method will create a new String based on the row number as first coord and column number as second coord using join
Define a method get_row that takes one argument
    it will return all the elements within the row number passed
Define a method get_col takes one argument
    Declare variable i and set it to 0
    Declare empty array column_values
    Loop through each sub-array and pushing values to column_values
    incrementing i by 1
    

# Initial Solution
class Board
  def initialize(boggle)
    @boggle = boggle
  end
  
  def get_row(row)
    @boggle[row]
  end
  
  def get_col(col)
    
    col_values = []
    @boggle.each do |x| 
      col_values << x [col]
      end
    return col_values
    end
    
    def boggle_board(row,col)
    @boggle[row][col]
    end
end
  
  
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts b.get_row(1)== 'c' 

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