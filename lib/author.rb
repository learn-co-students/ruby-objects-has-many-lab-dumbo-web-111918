class Author
  attr_accessor :name
  @@posts = []
  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
    @@posts << post
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    post.author = self
    @@posts << post
  end

  def self.post_count
    @@posts.count
  end

  def posts
    @@posts
  end
end