require "pry"

class Song 
	
	attr_accessor :name, :artist, :name

	@@all = []

	def initialize(name)
		@name = name
		@artist = artist
		@@all << self
	end

	def self.all 
		@@all
	end

	def artist_name 
		!!self.artist ? self.artist.name : nil	
	end



end


# binding.pry

puts "done"