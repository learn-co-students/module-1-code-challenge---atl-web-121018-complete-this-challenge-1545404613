class Author
  attr_accessor :name, :title, :magazine

  @@all = []
#tested
  def initialize(name)
    @name = name
  end
#tested
  def name(name)
    @name = name
  end
#tested
  def self.all
    @@all << name
  end
#tested

  def add_article(title, magazine)
    Article.all.select do |article|
      #title.self
      #magazine.self
      #not correct, but leaving for reference
    end
  end

  def articles
    Article.all.select do |articles|
      articles.self
    end
  end

  def magazines
    Article.all.select do |magazines|
      magazines.self
    end
  end

  def show_specialties(categories)
    Article.magazine.select do |authors|
      categories = categories.self
    end
  end
end




  # ### Author
  # An author is initialized with a  name as a string. A name **cannot** be changed after it is initialized.
  #
  # + `Author#name`
  #   + Returns the name of the author as a string
  # + `Author.all`
  #   + Returns an array of all Author instances
  # + `Author#add_article(title, magazine)`
  #   + Given a title (as a string) and a magazine (as Magazine instance), this method creates a new Article instance and associates it with that author and that magazine.
  # + `Author#articles`
  #   + Returns an array of Article instances the author has written
  # + `Author#magazines`
  #   + Returns an array of Magazine instances for which the author has contributed to
  # + `Author#show_specialties`
  #   + Returns an array of categories of the magazines for which the author has contributed to
