class Author
    attr_accessor :name, :posts
    @@all = []
    def initialize(name)
        @name = name 
        @posts = []
        @@all << self  
    end

    def add_post(post)
        @posts << post 
        post.author = self
    end

    def add_post_by_title(post_title)
        add_post(Post.new(post_title)) 
    end

    def self.post_count 
        @@all.map do |author|
        author.posts.count 
        end.reduce(:+)  
    end

    def self.all
        @@all
    end
end