require "pry"

class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all 
		@@all
	end

	def songs
		Song.all.each { |song| song.name  }
	end

	def add_song(song)
		song.artist = self
	end

	def add_song_by_name(name)
		Song.new(name).artist = self
	end

	def self.song_count
		Song.all.count
	end

end



# binding.pry