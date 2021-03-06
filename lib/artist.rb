class Artist 
  
  attr_accessor :name, :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    song.artist = self
    @songs << song
  end 
  
  def self.all 
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  def self.find_or_create_by_name(name)
     artist_names = @@all.collect {|artist| artist.name}
     if artist_names.include?(name)
       @@all.find {|artist| artist.name = name}
     else 
       self.new(name)
    end
  end 
  
  def print_songs
    @songs.each do |song| 
      puts song.name
    end 
  end 
    
end 