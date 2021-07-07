require 'pry'

require_relative "lib/artist.rb"
require_relative "lib/song.rb"
require_relative "lib/author.rb"
require_relative "lib/post.rb"

frank = Artist.new("frank ocean")
chanel = Song.new("chanel")

eiji = Author.new("eiji yoshikawa")
post1 = Post.new("Hello")



binding.pry
