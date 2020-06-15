class Song
  
  @@all = []
  
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
    self.all.length
  end 
  
  def self.all 
    @@all 
  end   
  
end   









