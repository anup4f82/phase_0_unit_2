# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself]


# Pseudocode



# Initial Solution
class Song
    
    def initialize(title,artist)
        @title = title
        @artist = artist
    end
    
    def title
        @title
    end
    
    def play
        
        puts " Playing: \s #{@title}"
    end
    
    def artist
        
        @artist
    end
    
end
    
    class Playlist
        
        def initialize(*list)
          
      
         
           @list = *list
           
           
        
    end
    
        def includes?(song)
        
          if  @list.include?(song) 
              return true
          else return false
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
     
          @list.each do |x| puts "Playing" +" "+x.title+" "+ "by" +" "+ x.artist
        
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









# Refactored Solution






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