class Author
attr_accessor :name
@@POSTS = []

def initialize(name)
  @name = name
end

def posts
  @@POSTS
end

def add_post(argument)
  argument.author = self
  @@POSTS << argument
end

def add_post_by_title(post_title)
  post_new = Post.new(post_title)
  post_new.author = self
  @@POSTS << post_new
end


def self.post_count
@@POSTS.count
end
end
