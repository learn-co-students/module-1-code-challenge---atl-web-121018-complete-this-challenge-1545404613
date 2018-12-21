

### Article
# An article is initialized with an author as an Author object and a magazine as a Magazine object. An article **cannot** change its author or magazine after it is has been initialized.
#
class Article
    attr_accessor :author, :name, :magazine

    @@all = []

    def initialize(author, name, magazine)
        @author = author
        @name = name
        @magazine = magazine
        @@all << self
    end


    # + `Article.all`
    #   + Returns an array of all Article instances
    def self.all
        @@all
    end

    # + `Article#author`
    #   + Returns the author for that given article
    def author
        @@all.select do |article|
            self
        end
    end

    # + `Article#magazine`
    #   + Returns the magazine for that given article
    def magazine
        @@all.select do |article|
            self
        end
    end

end
