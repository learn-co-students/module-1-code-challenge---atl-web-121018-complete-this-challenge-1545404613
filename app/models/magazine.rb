# ### Magazine
# A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.
#
# + `Magazine#name`
#   + Returns the name of this magazine
# + `Magazine#category`
#   + Returns the category of this magazine

class Magazine

    attr_accessor :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    # + `Magazine.all`
    #   + Returns an array of all Magazine instances
    def self.all
        @@all
    end

    # + `Magazine.find_by_name(name)`
    #   + Given a string of magazine's name, this method returns the first magazine object that matches
    def self.find_by_name(name)
        Article.all.find do |article|
            article.magazine.name == name
        end
    end

    # + `Magazine#article_titles`
    #   + Returns an array of the titles of all articles written for that magazine
    def article_titles
        # This builds off method above

    end
end
