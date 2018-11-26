require 'pry'

class Author

@@all = []
attr_accessor :name, :posts

def initialize(name)
  @name = name
  @posts = []
  @@all << self
end


def self.all
  @@all
end

def add_post (post)
  @posts << post
  post.author = self
#  binding.pry
end

def add_post_by_title (title)
  post = Post.new(title)
  @posts << post
post.author = self
end

def self.post_count
  new_array = self.all.map do |stuff|
  stuff.posts.count

end
new_array.reduce(:+)
end

end
