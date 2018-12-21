# ### Author
# An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.
#
# + `Author#name`
#   + Returns the name of the author as a string

class Author

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # + `Author.all`
    #   + Returns an array of all Author instances
    def self.all
        @@all
    end

    # + `Author#add_article(title, magazine)`
    #   + Given a title (as a string) and a magazine (as Magazine instance),
    #     this method creates a new Article instance and associates it with that author and that magazine.
    def add_article(title, magazine)
        Article.new(self, title, magazine)
    end

    # + `Author#articles`
    #   + Returns an array of Article instances the author has written
    def articles
        Article.all.select do |article|
            article.author == self
        end
    end

    # + `Author#magazines`
    #   + Returns an array of Magazine instances for which the author has contributed to
    def magazines
        self.articles.map do |article|
            article.magazine
        end
    end

    # + `Author#show_specialties`
    #   + Returns an array of categories of the magazines for which the author has contributed to
    def show_specialties
        self.magazines.map do |magazine|
            magazine.category
        end
    end
end
