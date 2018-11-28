require "pry"

require_relative "./artist.rb"
require_relative "./song.rb"


rain = Song.new("Rain")
jayz = Artist.new("Jayz")
clownboy = Artist.new("Clownboy")
jayz.add_song(rain)
jayz.add_song_by_name("Goodcat")
clownboy.add_song_by_name("HappyBirthday")

Artist.song_count 
