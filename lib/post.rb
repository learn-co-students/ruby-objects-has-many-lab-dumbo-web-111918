class Post 
    attr_accessor :title, :author, :name
    @@all = []
    def initialize(title)
        @name = name
        @title = title 
        @author = author
        @@all << self  
    end

    def self.all 
        @@all 
    end

    def author_name 
        if self.author == nil 
            return nil
        else 
            self.author.name
        end     
    end


end