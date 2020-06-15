class Artist
  
  @@all = [] 
  @@song_count = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    Artist.all << self
    @songs = []
  end  
  
  def add_song(song) 
    @songs << song 
    song.artist = self
   
  end   
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end   
  
  def self.song_count
    @@song_count 
  end   
  
  def self.song_count=(song_count)
    @@song_count = song_count
  end 
  
  def songs
    @songs
  end   
  
  def self.all 
    @@all 
  end 
  
end   

































