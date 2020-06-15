class Song
  
  @@song_list = []
  
  attr_accessor :artist, :name 
  
  def initialize(name)
    @name = name 
  end   
  
  def artist=(artist)
    @artist = artist 
    artist.songs << self 
    Artist.song_count +=1 
  end 
  
  def artist 
    @artist 
  end   
  
  def self.count
    @@song_list.length
  end 
  
end   









