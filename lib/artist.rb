class Artist

@@all = []
attr_accessor :name, :songs, :artist

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def self.all
  @@all
end

def add_song (song)
@songs << song
song.artist = self
end

def add_song_by_name (song_name)
  song = Song.new(song_name)
  @songs << song
  song.artist = self
#  binding.pry
end

def self.song_count
  new_array = self.all.map do |artist|
  artist.songs.count
     #binding.pry
end
new_array.reduce(:+)
end
end
