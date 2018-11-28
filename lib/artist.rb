class Artist
    attr_accessor :name, :songs
    @@all = []


    def initialize(name)
        @name = name
        @songs = []
        @@all << self 
    end 

    def add_song(song)
      @songs << song 
      song.artist = self
    end

    def add_song_by_name(song_name)
        add_song(Song.new(song_name))
    end

    def self.song_count 
        @@all.map do |artist|
            artist.songs.count
        end.reduce(:+)
    end
    
    def self.all
        @@all 
    end
   
end


Artist.song_count 






