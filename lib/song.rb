require 'pry'

class Song
  @@all =[]
attr_accessor :name, :artist, :artist_name
def initialize(name)
  @name = name
  @@all << self
  @artist_name = artist_name
end

def self.all
  @@all
end

def artist_name

      if @artist == nil
        return nil
      else
        @artist.name
end
#binding.pry
end
end
