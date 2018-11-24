class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist.name = nil
    @@all << self
  end
  
  def self.new(name)
  end
  
  def self.all
    @@all
  end

  def artist_name
    self.artist.name
  end
  
  def artist_name=(name)
    self.artist.name = name
  end
end