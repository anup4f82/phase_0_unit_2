# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself


# Pseudocode

# Create a class called Song
   # Create a initialize method that takes two arguments title and artist
   # Create a attr_reader method for the title and artist
   # Create a play method that plays the title 
# Create a class called Playlist
  # Create a initializer method that takes argument as *list(splat argument) , Set @ list = *list, @list is now a array of songs
  #Create a method called includes? that takes argument as song and checks if it is icnluded in the @list array
    # if song is present in @list
    # return true
    # else 
    #return false
    #end
   # Create a method called display that displays the title and artist for each song in @list
     #Iterate through each element of the array @list and print the Title and artist
     #end
   # Create a method called remove which takes argument as song and removes that song from the @list array
     # Loop through each element of the array @list, using 'delete_if'
     #if x== song, it will delete that element from the @list array
   # Create a method called play_all, that will iterate through each element of the @list array and print the Song title

   # Create a method called num_of_tracks that will return the number of elements of the @list array
   # Create a method called add that takes *song as argument and adds the elements of song to the @list array



# Initial Solution
# class Song
#   def initialize(title,artist)
#     @title = title
#     @artist = artist
#   end
  
#   def title
#     @title
#   end
#   def play
#     puts " Playing: \s #{@title}"
#   end
#   def artist
#     @artist
#   end
# end

# class Playlist
#   def initialize(*list)
#     @list = *list
#   end
  
#   def includes?(song)
#     if  @list.include?(song) 
#       return true
#     else 
#       return false
#     end
#   end
    
#   def display
#     @list.each do |x| puts "Title:"+x.title+" "+"Artist:"+x.artist
#     end
#   end
  
#   def remove(song)
#     @list.delete_if{|x| x == song}
#   end
  
#   def play_all
#     @list.each do |x| 
#       puts "Playing" +" "+x.title+" "+ "by" +" "+ x.artist
#     end
#   end
    
#   def num_of_tracks
#     @list.length
#   end
  
#   def add(*song)
#     song.each do |x|
#     @list << x
#   end
# end
# end

# Refactored Solution

class Song
  def initialize(title,artist)
    @title = title
    @artist = artist
  end
  
 attr_reader :title,:artist
  def play
    puts " Playing:  #{@title}"
  end
 
end

class Playlist
  def initialize(*list)
    @list = *list
  end
  
  def includes?(song)
    if  @list.include?(song) 
      return true
    else 
      return false
    end
  end
    
  def display
    @list.each do |x| puts "Title:"+x.title+" "+"Artist:"+x.artist
    end
  end
  
  def remove(song)
    @list.delete_if{|x| x == song}
  end
  
  def play_all
    @list.each do |x| 
      puts "Playing" +" "+x.title+" "+ "by" +" "+ x.artist
    end
  end
    
  def num_of_tracks
    @list.length
  end
  
  def add(*song)
    song.each do |x|
    @list << x
  end
end
end




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 

# What parts of your strategy worked? What problems did you face?
# I didnt face any problems for this challenge.
# What questions did you have while coding? What resources did you find to help you answer them?
# This is the first time I am using objects of one class in another class. my @list array is composed of 'objects', yet when I use include? and remove
#it works! 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Objects used in another class
# Did you learn any new skills or tricks?
# Object oriented programming
# How confident are you with each of the Learning Competencies?
# Very confident
# Which parts of the challenge did you enjoy?
# thedriver code working
# Which parts of the challenge did you find tedious?
# None