class Article
  attr_accessor :title, :author, :magazine

  @@all = []
#tested
  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
  end

  def title(title)
    @title = title
  end

  def author(author)
    author = Article.self
  end

  def magazine(magazine)
    magazine = Article.self
  end

  def self.all
    @@all
  end



end






  ### Article
  # An article is initialized with an author as an Author object and a magazine as a Magazine object. An article **cannot** change its author or magazine after it is has been initialized.
  #
  # + `Article.all`
  #   + Returns an array of all Article instances
  # + `Article#author`
  #   + Returns the author for that given article
  # + `Article#magazine`
  #   + Returns the magazine for that given article
