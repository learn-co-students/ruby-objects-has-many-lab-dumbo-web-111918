class Artist
attr_accessor :name
@@SONG = []

def initialize(name)
  @name = name
end

def songs
@@SONG
end

def add_song(arg)
  arg.artist = self
  @@SONG << arg
end


def add_song_by_name(song_name)
new_song = Song.new(song_name)
new_song.artist = self
@@SONG << new_song
end

def self.song_count
@@SONG.count
end
end
