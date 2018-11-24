
class Author
  attr_accessor :name, :posts
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    sum = 0
    @@all.each do |author|
      sum += author.posts.count
    end
    sum
  end
end
