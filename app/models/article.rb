class Article
  attr_reader :author, :magazine, :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(author, title, magazine)
    @author = author
    @title = title
    @magazine = magazine
    self.class.all << self
  end

end
